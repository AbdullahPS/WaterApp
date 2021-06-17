import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text('WaterApp'),
        ),
        body: Container(
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 1),
                child: Image.asset(
                  'assets/images/water.png',
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                ),
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Password"),
              ),
              TextButton(
                  onPressed: () => null,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.redAccent),
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(60)),
                    height: size.height * 0.075,
                    width: size.width * 0.75,
                    child: Center(
                        child: Text(
                      "Login",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
                  )),
              SignInButton(Buttons.Facebook, onPressed: () => null),
              SignInButton(Buttons.Google, onPressed: () => null),
              GestureDetector(
                child: Text(
                  "Don't you have an account? Register here",
                  style: TextStyle(color: Colors.blue),
                ),
              )
            ],
          ),
        ));
  }
}
