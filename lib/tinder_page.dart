import 'package:desafio_aula1_mockup/widget/tinder_buttom.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TinderPage extends StatelessWidget {
  const TinderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFe94976),
              Color(0xFFee7462),
              // Color(0xFFfeffff),
            ],
          ),
        ),
        child: SafeArea(
          top: false,
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 90.0),
                child: Image.asset(
                  'assets/logo_tinder.png',
                  width: MediaQuery.of(context).size.width * 0.6,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                  right: 30,
                  left: 30,
                  bottom: 10,
                ),
                child: Column(
                  children: [
                    Text.rich(
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                      TextSpan(
                        text:
                            'By tapping Create Account or Sign In, you agree to our ',
                        children: [
                          TextSpan(
                            text: 'Terms',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Navigator.pop(context),
                          ),
                          const TextSpan(
                              text: '. Learn how we process your data in our '),
                          TextSpan(
                            text: 'Privacy',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Navigator.pop(context),
                          ),
                          TextSpan(
                            text: ' Policy',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Navigator.pop(context),
                          ),
                          const TextSpan(text: ' and '),
                          TextSpan(
                            text: 'Cookies Policy.',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Navigator.pop(context),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  TinderButtom(
                      top: 10.0,
                      left: 20,
                      right: 20,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      iconName: 'assets/logo_apple.png',
                      label: 'Sign with apple'),
                  TinderButtom(
                      top: 10.0,
                      left: 20,
                      right: 20,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      iconName: 'assets/logo_facebook.png',
                      label: 'Sign with facebook'),
                  TinderButtom(
                      top: 10.0,
                      left: 20,
                      right: 20,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      iconName: 'assets/bubble.png',
                      label: 'Sign with phone number'),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: TextButton.styleFrom(primary: Colors.white10),
                    child: const Text(
                      'Trouble Signing In?',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
