import 'package:flutter/material.dart';
import 'package:watercontrol/utilities/constansts.dart';

class Register extends StatelessWidget {
  static const routePathName = 'Register';

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 1),
                child: Image.asset(
                  'assets/images/water.png',
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Container(
                width: size.width * 0.8,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.black12,
                    ),
                    labelText: "Email",
                  ),
                ),
              ),
              Container(
                width: size.width * 0.8,
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.black12,
                    ),
                    labelText: "Phone Number",
                  ),
                ),
              ),
              Container(
                width: size.width * 0.8,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.password, color: Colors.black12),
                      labelText: "Password"),
                ),
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
                onTap: () => Navigator.of(context).pop(),
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
