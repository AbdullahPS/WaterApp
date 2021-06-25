import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:watercontrol/screens/register.dart';
import 'watermodule.dart';

class Homepage extends StatelessWidget {
  static const routePathName = 'Homepage';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    TextEditingController emailController = new TextEditingController();
    TextEditingController passWordController = new TextEditingController();

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('WaterApp'),
        ),
        body: Scrollbar(
          child: Container(
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
                        labelText: "Email",
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.black12,
                        )),
                  ),
                ),
                SizedBox(height: size.height / 20),
                Container(
                  width: size.width * 0.8,
                  child: TextField(
                    obscureText: true,
                    controller: passWordController,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.password,
                          color: Colors.black12,
                        ),
                        border: OutlineInputBorder(),
                        labelText: "Password"),
                  ),
                ),
                SizedBox(height: size.height / 20),
                Column(
                  children: [
                    TextButton(
                        onPressed: () => Navigator.of(context)
                            .pushNamed(Watermodule.routePathName),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.redAccent),
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(60)),
                          width: size.width * 0.7,
                          height: size.height * 0.075,
                          child: Center(
                              child: Text(
                            "Login",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                        )),
                    SizedBox(height: size.height / 20),
                    GestureDetector(
                      onTap: () => Navigator.of(context)
                          .pushNamed(Register.routePathName),
                      child: Text(
                        "Don't you have an account? Register here",
                        style: TextStyle(color: Colors.blue),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
