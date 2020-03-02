import 'package:flutter/material.dart';
import 'package:productivity/models/color_model.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  double width;
  double height;
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // screen size
    Size size = MediaQuery.of(context).size;
    width = size.width;
    height = size.height;
    
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.1,
                vertical: height * 0.06
              ),
              child: FlutterLogo(),
            ),
            Container(
              child: emailInput(),
            ),
            Container(
              child: passwordInput(),
            ),
            Container(
              child: forgotPasswordLink(),
            ),
            Container(
              child: loginButton(),
            ),
          ],
        );
      }
    );
  }

  Widget emailInput() {
    return TextField(
      controller: emailController,
      style: TextStyle(
        fontSize: height * 0.023,
        color: colors.greyColor
      ),
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.vpn_key, 
          size: height * 0.026, 
          color: colors.greyColor
        ),
        prefixStyle: TextStyle(
          fontSize: height * 0.023,
          fontWeight: FontWeight.bold,
        ),
        hintText: 'Email',
        hintStyle: TextStyle(
          color: colors.greyColor,
          fontSize: height * 0.021
        ),
        fillColor: colors.greyColor,
        filled: true,
      ),
    );
  }

  Widget passwordInput() {
    return TextField(
      controller: passwordController,
      style: TextStyle(
        fontSize: height * 0.023,
        color: colors.greyColor
      ),
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.vpn_key, 
          size: height * 0.026, 
          color: colors.greyColor
        ),
        prefixStyle: TextStyle(
          fontSize: height * 0.023,
          fontWeight: FontWeight.bold,
        ),
        hintText: 'Password',
        hintStyle: TextStyle(
          color: colors.greyColor,
          fontSize: height * 0.021
        ),
        fillColor: colors.greyColor,
        filled: true,
      ),
      obscureText: true,
    );
  }

  Widget forgotPasswordLink() {
    return GestureDetector(
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          'Forgot Password?',
          style: TextStyle(),
        ),
      ),
    );
  }

  Widget loginButton() {
    return MaterialButton(
      onPressed: () {},
      minWidth: width * 0.8,
      child: Text(
        'Login',
        style: TextStyle()
      ),
    );
  }
}