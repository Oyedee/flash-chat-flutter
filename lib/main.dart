import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: WelcomeScreen.welcome_id,
      routes: {
        WelcomeScreen.welcome_id: (context) => WelcomeScreen(),
        LoginScreen.login_id: (context) => LoginScreen(),
        RegistrationScreen.registration_id: (context) => RegistrationScreen(),
        ChatScreen.chat_id: (context) => ChatScreen(),
      },
    );
  }
}
