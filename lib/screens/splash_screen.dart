import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:whatbill/screens/terms_condition_screen.dart';

import 'home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    viewFunction();
    super.initState();
  }

  void viewFunction() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    bool? agreement = preferences.getBool("agreement");
    if (agreement != null) {
      agreement = true;
    } else {
      agreement = false;
    }

    Future.delayed(
        const Duration(seconds: 2),
        () => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
                builder: (context) => agreement == true
                    ? MyHomePage()
                    : const TermConditionScreen()),
            (route) => true));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage("assets/Images/AppIcon.jpeg"))
                  // color: Colors.accents,
                  ),
            )
          ],
        ),
      ),
    );
  }
}
