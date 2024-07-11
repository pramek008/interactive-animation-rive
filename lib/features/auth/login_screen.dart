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
  // declare the assetsRive variable and assign
  // the path to the animated_login_character.riv file
  var assetsRive = 'assets/animated_login_character.riv';

  // declare the stateMachineController variable
  //and Artboard variable
  StateMachineController? stateMachineController;
  Artboard? artboard;

  // declare SMI to handle the animation state
  // based properties on Rive website before
  SMITrigger? failTrigger, successTrigger;
  SMIBool? isHandsUp, isChecking;
  SMINumber? lookNum;

  final _formKey = GlobalKey<FormState>();

  late final bool _obscureText = true;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    rootBundle.load(assetsRive).then((value) {
      // Load Rive asset file
      final file = RiveFile.import(value); // Import the loaded file
      final art = file.mainArtboard; // Get the main artboard
      stateMachineController = StateMachineController.fromArtboard(
          art, "interactionMachine"); // Create state machine controller

      if (stateMachineController != null) {
        art.addController(
            stateMachineController!); // Add controller to artboard

        for (var element in stateMachineController!.inputs) {
          if (element.name == "isChecking") {
            isChecking = element as SMIBool; // Map checking status control
          } else if (element.name == "isHandsUp") {
            isHandsUp = element as SMIBool; // Map hands-up animation control
          } else if (element.name == "trigSuccess") {
            successTrigger = element as SMITrigger; // Map success trigger
          } else if (element.name == "trigFail") {
            failTrigger = element as SMITrigger; // Map failure trigger
          } else if (element.name == "numLook") {
            lookNum = element as SMINumber; // Map gaze direction control
          }
        }
      }
      setState(() => artboard = art); // Update UI with prepared animation
    });
    super.initState();
  }

  // This method sets the animation
  // to a "looking around" state.
  // It activates when users type in the email field
  void lookAround() {
    isChecking?.change(true);
    isHandsUp?.change(false);
    lookNum?.change(0);
  }

  // This method adjusts the character's
  // gaze based on input length
  // It's likely used to make the character
  // look at the text being entered
  void moveEyes(value) {
    lookNum?.change(value.length.toDouble());
  }

  // This method sets the animation to
  // a "hands up on eyes" state
  // It activates when users type
  // in the password field
  void handsUpOnEyes() {
    isHandsUp?.change(true);
    isChecking?.change(false);
  }

  // This method deactivates all animations
  // It's likely used to reset the character's state
  void handsDown() {
    isHandsUp?.change(false);
    isChecking?.change(false);
  }

  // This method triggers the animation
  // for an incorrect input or failed state
  // It deactivates ongoing animations,
  void wrongState() {
    isChecking?.change(false);
    isHandsUp?.change(false);
    setState(() {});
    failTrigger?.fire();
  }

  // This method triggers the animation for
  // a correct input or successful state
  // It deactivates ongoing animations,
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
                // Triggers "look around" animation when email field is tapped
                onTap: lookAround,
                // Moves character's eyes based on input length
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
              CustomTextFormField(
                label: 'Password',
                // Triggers "hands up on eyes" animation when password field is tapped
                onTap: handsUpOnEyes,
                controller: _passwordController,
                isPassword: _obscureText,
                onChanged: (p0) {
                  // Triggers "hands up on eyes" animation when password field is changed
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
                  // Resets character to neutral state when login button is pressed
                  handsDown();
                  if (_formKey.currentState!.validate()) {
                    String email = "email@mail.com";
                    String password = "pass1234";

                    if (_emailController.text == email &&
                        _passwordController.text == password) {
                      // Triggers success animation if login is correct
                      successState();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          backgroundColor: Colors.green,
                          content: Text('Login Success'),
                        ),
                      );
                    } else {
                      // Triggers failure animation if login is incorrect
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
