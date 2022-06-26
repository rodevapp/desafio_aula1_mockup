import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _navigationTinder() {
      Navigator.of(context).pushNamed('/tinder');
    }

    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Center(
              child: Image.asset(
                'assets/logo1.png',
                height: 150,
                width: 150,
              ),
            ),
          ),
          Column(
            children: const [
              Text(
                'Get your Money',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              Text(
                'Under Control',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              SizedBox(height: 10),
              Text(
                'Manage your expenses.',
                style: TextStyle(
                    color: Colors.white54,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Text(
                'Seamlessly.',
                style: TextStyle(
                    color: Colors.white54,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _navigationTinder();
                  },
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF5e5ce5)),
                  child: const Text(
                    'Sign Up With Email ID',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    _navigationTinder();
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  icon: Image.asset(
                    'assets/google.png',
                    height: 20,
                    width: 20,
                  ),
                  label: const Text(
                    'Sign Up With Google',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account? ',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {
                        _navigationTinder();
                      },
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
