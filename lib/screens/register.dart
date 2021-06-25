import 'package:flutter/material.dart';
import 'package:watercontrol/utilities/constansts.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Register extends StatefulWidget {
  static const routePathName = 'Register';

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String errormessage;
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('WaterApp'),
        ),
        body: Container(
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
                  controller: emailController,
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
              SizedBox(height: size.width / 20),
              Container(
                width: size.width * 0.8,
                child: TextField(
                  keyboardType: TextInputType.phone,
                  controller: phoneController,
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
              SizedBox(height: size.width / 20),
              Container(
                width: size.width * 0.8,
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.password, color: Colors.black12),
                      labelText: "Password"),
                ),
              ),
              SizedBox(height: size.width / 10),
              TextButton(
                  onPressed: () => validateInputData(emailController.text,
                          passwordController.text, phoneController.text)
                      ? Fluttertoast.showToast(msg: "Login Succesfully")
                      : Fluttertoast.showToast(msg: errormessage),
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
              SizedBox(
                height: size.height / 20,
              ),
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

  bool validateInputData(email, pass, phone) {
    if (!email.toString().contains('@')) {
      errormessage = ('enter a valid email adress');
      return false;
    } else if (pass.toString().length < 8) {
      errormessage = ('password length hast to be at least 8 caracters long');
      return false;
    }
    if (phone.toString().length != 10) {
      errormessage = ('Please enter a valid phone number');
      return false;
    }
    return true;
  }
}
