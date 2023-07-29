import 'package:day8_splash/Animations/FadeAnimation.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xAA1A1B1E),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FadeAnimation(1.2, Text("Let's sign you in.", 
            style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)),
            SizedBox(height: 30,),
            FadeAnimation(1.5, Container(
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xAA1A1B1E),
                border: Border.all(color: Color(0xFF373A3F))
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Color(0xFF373A3F)))
                    ),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Color(0xFF5C5F65)),
                        hintText: "Email or Phone number"
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                    ),
                    child: TextField(
                      obscureText: true,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Color(0xFF5C5F65)),
                        suffixIcon: Icon(Icons.remove_red_eye, color: Color(0xFF5C5F65),),
                        hintText: "Password"
                      ),
                    ),
                  ),
                ],
              ),
            )),
            SizedBox(height: 40,),
            FadeAnimation(1.6, Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("Don't have an account?", style: TextStyle(color: Color(0xFF5C5F65)),),
              SizedBox(width: 6,),
              Text("Register", style: TextStyle(color: Colors.blue ),)
            ],)),
            SizedBox(height: 20,),
            FadeAnimation(1.8, Center(
              child: MaterialButton(
                onPressed: () {},
                color: Color(0xAA3A5BDA),
                padding: EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Center(child: Text("Login", style: TextStyle(color: Colors.white.withOpacity(.7), fontSize: 16),)),
              ),
            )),
          ],
        ),
      ),
    );
  }
}