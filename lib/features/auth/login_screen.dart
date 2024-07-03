import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

import 'package:rive_auth_app/utils/validator.dart';

import '../../utils/theme.dart';
import '../../widgets/btn_widget.dart';
import '../../widgets/text_form_field.dart';

import 'register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const routeName = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  late bool _obscureText = true;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  var assetsRive = 'assets/animated_login_character.riv';
  SMITrigger? failTrigger, successTrigger;
  SMIBool? isHandsUp, isChecking;
  SMINumber? lookNum;
  StateMachineController? stateMachineController;
  Artboard? artboard;

  @override
  void initState() {
    rootBundle.load(assetsRive).then((value) {
      final file = RiveFile.import(value);
      final art = file.mainArtboard;
      stateMachineController =
          StateMachineController.fromArtboard(art, "Login Machine");

      if (stateMachineController != null) {
        art.addController(stateMachineController!);

        for (var element in stateMachineController!.inputs) {
          if (element.name == "isChecking") {
            isChecking = element as SMIBool;
          } else if (element.name == "isHandsUp") {
            isHandsUp = element as SMIBool;
          } else if (element.name == "trigSuccess") {
            successTrigger = element as SMITrigger;
          } else if (element.name == "trigFail") {
            failTrigger = element as SMITrigger;
          } else if (element.name == "numLook") {
            lookNum = element as SMINumber;
          }
        }
      }
      setState(() => artboard = art);
    });
    super.initState();
  }

  void lookAround() {
    isChecking?.change(true);
    isHandsUp?.change(false);
    lookNum?.change(0);
  }

  void moveEyes(value) {
    lookNum?.change(value.length.toDouble());
  }

  void handsUpOnEyes() {
    isHandsUp?.change(true);
    isChecking?.change(false);
  }

  void wrongState() {
    isChecking?.change(false);
    isHandsUp?.change(false);
    setState(() {});
    failTrigger?.fire();
  }

  void successState() {
    isChecking?.change(false);
    isHandsUp?.change(false);
    successTrigger?.fire();
    setState(() {});
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget heading() => Container(
          margin: EdgeInsets.only(
            top: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: Column(
            children: [
              Text('Welcome back! Glad to see you, Again!',
                  style: txBold.copyWith(
                    color: blackColor,
                  )),
              const SizedBox(
                height: 40,
              ),
              if (artboard != null)
                SizedBox(
                  width: 500,
                  height: 300,
                  child: Rive(artboard: artboard!),
                ),
            ],
          ),
        );

    Widget formLogin() {
      return Container(
        margin: EdgeInsets.only(
          // top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              CustomTextFormField(
                label: 'Email',
                onTap: lookAround,
                onChanged: ((value) => moveEyes(value)),
                controller: _emailController,
                validator: (validator) {
                  if (validator!.isEmpty) {
                    return 'Email is required';
                  } else if (!validator.isValidEmail) {
                    return 'Email is not valid';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomTextFormField(
                    label: 'Password',
                    onTap: handsUpOnEyes,
                    controller: _passwordController,
                    isPassword: _obscureText,
                    onChanged: (p0) {
                      handsUpOnEyes();
                    },
                    validator: (validator) {
                      if (validator!.isEmpty) {
                        return 'Password is required';
                      } else {
                        final password = validator;
                        if (!password.hasMinLength(8)) {
                          return 'Password must be at least 8 characters';
                        } else {
                          return null;
                        }
                      }
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomButtonWidget(
                    btnName: 'Login',
                    width: defaultMargin,
                    statusColor: true,
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        String email = "email@mail.com";
                        String password = "pass1234";

                        if (_emailController.text == email &&
                            _passwordController.text == password) {
                          successState();
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              backgroundColor: Colors.green,
                              content: Text('Login Success'),
                            ),
                          );
                        } else {
                          wrongState();
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              backgroundColor: Colors.red,
                              content: Text('Login Failed'),
                            ),
                          );
                        }
                      }
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Forgot Password?',
                      style: txMedium.copyWith(
                        color: primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 45,
              ),
            ],
          ),
        ),
      );
    }

    Widget footer() => Container(
          margin: EdgeInsets.only(
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don’t have an account? ',
                style: txRegular.copyWith(
                  color: greyColor,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterScreen()),
                  );
                },
                child: Text(
                  'Sign Up',
                  style: txMedium.copyWith(
                    color: primaryColor,
                  ),
                ),
              ),
            ],
          ),
        );

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            heading(),
            formLogin(),
            const SizedBox(
              height: 110,
            ),
            footer(),
          ],
        ),
      )),
    );
  }
}
