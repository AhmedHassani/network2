import 'package:flutter/material.dart';
import 'package:network2/user.dart';

import 'colors.dart';
import 'login_controller.dart';

class Auth extends StatefulWidget {
  @override
  _AuthState createState() => _AuthState();
}


class _AuthState extends State<Auth> {
  TextEditingController _passwordController =  TextEditingController();
  TextEditingController _usernameController =  TextEditingController();
  TextEditingController _nameController =  TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        title:const  Text("Register"),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 150,
              ),
              Padding(
                //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      hintText: 'Enter valid email id as abc@gmail.com'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: _nameController,
                  decoration:const  InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'name',
                      hintText: 'Enter your name'),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration:const  InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter secure password'),
                ),
              ),
              const  SizedBox(height:40,),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: color, borderRadius: BorderRadius.circular(20)),
                child: FlatButton(
                  onPressed: () {
                    var log = LoginController();
                    log.addUser(User(
                      username: _usernameController.text,
                      password: _passwordController.text,
                      name: _nameController.text,
                    ));
                    ScaffoldMessenger.of(context).showSnackBar( const SnackBar(
                      content: Text("Sccessful Save data"),
                    ));
                  },
                  child: const Text(
                    'Register',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              const SizedBox(
                height: 130,
              ),
            ],
          ),
        ),
      ),
    );
  }
}