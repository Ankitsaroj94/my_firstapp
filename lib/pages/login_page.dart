// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sort_child_properties_last, avoid_print, sized_box_for_whitespace, use_build_context_synchronously

import 'package:flutter/material.dart';

import '../utilities/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton=false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
                height: 300,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome  $name",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter username",
                        labelText: "Username",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: ()async{
setState(() {
  changeButton=true;
});
await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                     
                     
                      },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width:changeButton?50: 150,
                      height: 40,
                     
                      child: changeButton?Icon(Icons.done,
                      color: Colors.white
                      ):
                       Text(
                        "LOGIN",
                      style:TextStyle(
                        color: Colors.white,
                        fontWeight:FontWeight.bold,
                        fontSize:18
                      ),
                      ),

                    ),),

                    ElevatedButton(
                      child: Text("Login"),
                      style: TextButton.styleFrom(minimumSize: Size(120, 40),
                         ),
                      onPressed: () {
                        
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
