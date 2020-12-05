import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// from project
import '../mixin/validaiton_mixin.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with ValidationMixin {
  final formKey = GlobalKey<FormState>();
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        padding: EdgeInsets.all(5.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'abc@gmail.com',
                ),
                validator: validateEmail, // mixin is used
                onSaved: (value){
                  email = value;
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter password',
                ),
                validator: validatePassword, // called by formKey.currentState.validate(); // mixin is used
                onSaved: (value){
                  password = value;
                }, // called by formKey.currentState.save();
              ),
              RaisedButton(
                child: Text('Login'),
                  color: Colors.orange,
                  onPressed: (){
                    if(formKey.currentState.validate()){
                      formKey.currentState.save();
                      print('The email id is $email and password is $password');
                    }
                  },
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget emailField(){

}
