import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rive/rive.dart';
import 'package:rive_auth_app/features/auth/bloc/auth_bloc.dart';
import 'package:rive_auth_app/utils/validator.dart';

import '../../client/service_locator.dart';
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
  GoRouter router = locator.get<GoRouter>();
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
    isHandsUp?.change(false);
    failTrigger?.fire();
  }

  void loginClick() {
    isChecking?.change(false);
    isHandsUp?.change(false);
    if (_emailController.text == "email" &&
        _passwordController.text == "pass") {
      successTrigger?.fire();
    } else {
      failTrigger?.fire();
    }
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
    void _toggle() {
      setState(() {
        _obscureText = !_obscureText;
      });
    }

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
              BlocConsumer<AuthBloc, AuthState>(
                listener: (context, state) {
                  print(state);
                  state.maybeWhen(
                    success: () {
                      isChecking?.change(false);
                      isHandsUp?.change(false);
                      successTrigger?.fire();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text('Login Success'),
                          backgroundColor: greenColor.withOpacity(0.7),
                        ),
                      );
                      // router.goNamed(HomeScreen.routeName);
                    },
                    error: (message) {
                      // isChecking?.change(false);
                      // isHandsUp?.change(false);
                      // failTrigger?.fire();
                      wrongState();
                      setState(() {});
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(message),
                          backgroundColor: redColor.withOpacity(0.7),
                        ),
                      );
                    },
                    orElse: () {}, // Handle other states if necessary
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    initial: () {
                      return CustomButtonWidget(
                        btnName: 'Login',
                        width: defaultMargin,
                        statusColor: true,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            context.read<AuthBloc>().add(
                                  AuthEvent.login(
                                    username: _emailController.text.trim(),
                                    password: _passwordController.text.trim(),
                                  ),
                                );
                          } else {
                            wrongState();
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: const Text(
                                    'Please fill the form correctly'),
                                backgroundColor: redColor.withOpacity(0.7),
                              ),
                            );
                          }
                        },
                      );
                    },
                    loading: () {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                    error: (message) {
                      wrongState();
                      return CustomButtonWidget(
                        btnName: 'Login',
                        width: defaultMargin,
                        statusColor: true,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            context.read<AuthBloc>().add(
                                  AuthEvent.login(
                                    username: _emailController.text.trim(),
                                    password: _passwordController.text.trim(),
                                  ),
                                );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: const Text(
                                    'Please fill the form correctly'),
                                backgroundColor: redColor.withOpacity(0.7),
                              ),
                            );
                          }
                        },
                      );
                    },
                    orElse: () {
                      return const SizedBox();
                    },
                  );
                },
              ),

              // BlocConsumer<AuthCubit, AuthState>(
              //   listener: (context, state) {
              //     if (state is AuthSuccess) {
              //       Navigator.pushAndRemoveUntil(
              //           context,
              //           MaterialPageRoute(builder: (context) => HomeScreen()),
              //           (route) => false);
              //     } else if (state is AuthFailed) {
              //       ScaffoldMessenger.of(context).showSnackBar(
              //         SnackBar(
              //           content: Text(state.message),
              //           backgroundColor: redColor.withOpacity(0.7),
              //         ),
              //       );
              //     }
              //   },
              //   builder: (context, state) {
              //     if (state is AuthLoading) {
              //       return const CircularProgressIndicator();
              //     }
              //     return CustomButtonWidget(
              //         btnName: 'Login',
              //         btnColor: blackColor,
              //         width: defaultMargin,
              //         statusColor: true,
              //         onPressed: () {
              //           if (_formKey.currentState!.validate()) {
              //             context.read<AuthCubit>().signIn(
              //                   email: _emailController.text.trim(),
              //                   password: _passwordController.text.trim(),
              //                 );
              //           } else {
              //             ScaffoldMessenger.of(context).showSnackBar(
              //               SnackBar(
              //                 content: Text('Please fill the form correctly'),
              //                 backgroundColor: redColor.withOpacity(0.7),
              //               ),
              //             );
              //           }
              //         });
              //   },
              // )
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
