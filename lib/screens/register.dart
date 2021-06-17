import 'package:flutter/material.dart';

class Register extends StatelessWidget {
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
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Phone Number",
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
                      "Register",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
                  )),
              GestureDetector(
                child: Text(
                  "You already have an account? Login here",
                  style: TextStyle(color: Colors.blue),
                ),
              )
            ],
          ),
        ));
  }
}
