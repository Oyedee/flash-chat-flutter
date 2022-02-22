import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat/components/flash_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String welcome_id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();

    //setup and initialize animation controller
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);

    controller.forward(); //this will proceed our animation forward

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60,
                  ),
                ),
                DefaultTextStyle(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [TypewriterAnimatedText('Flash Chat')],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            FlashButton(
              buttonText: 'Log In',
              buttonColor: Colors.lightBlueAccent,
              onPress: () {
                //Go to login screen.
                Navigator.pushNamed(context, LoginScreen.login_id);
              },
            ),
            FlashButton(
              buttonColor: Colors.blueAccent,
              buttonText: 'Register',
              onPress: () {
                //Go to registration screen.
                Navigator.pushNamed(
                    context, RegistrationScreen.registration_id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
