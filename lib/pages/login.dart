import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
            margin: EdgeInsets.only(top: 32.0),
            child: Column(
              children: <Widget>[
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Text(
                          'Login to your account',
                          style: TextStyle(
                              fontSize: 28.0,
                              color: Color(0xff333333),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 36.0),
                        child: Text(
                            'Enter your name, email address and create a password to sign up',
                            style: TextStyle(
                                fontSize: 18.0, color: Color(0xff767676))),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Email Address',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Color(0xff333333),
                      ),
                    ),
                    SizedBox(
                      height: 18.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff00a159), width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff00a159), width: 0.8),
                        ),
                        hintText: 'Example@gmail.com',
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ],
                ),
                SizedBox(
                  height: 32.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Password',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Color(0xff333333),
                      ),
                    ),
                    SizedBox(
                      height: 18.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff00a159), width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff00a159), width: 0.8),
                        ),
                        hintText: '*********',
                      ),
                      obscureText: true,
                    ),
                  ],
                ),
                SizedBox(
                  height: 48.0,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    color: Color(0xffe5ed98),
                    child: FlatButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, '/dashboard'),
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xff333333),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
