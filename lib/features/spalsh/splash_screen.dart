import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String routeName = '/';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // Timer(
    //   const Duration(seconds: 3),
    //   () {
    //     User? user = FirebaseAuth.instance.currentUser;

    //     if (user == null) {
    //       Navigator.pushNamedAndRemoveUntil(
    //           context, '/login', (route) => false);
    //     } else {
    //       print(user.email);
    //       context.read<AuthCubit>().checkUser(user.uid);
    //       Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
    //     }
    //   },
    // );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.ac_unit,
              size: 100,
              color: Colors.blue,
            ),
            SizedBox(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.3,
                    ),
                    const CircularProgressIndicator(
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
