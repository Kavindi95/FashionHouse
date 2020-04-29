import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'view/dashboard.dart';
import 'view/signin.dart';
import 'view/signup.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Signin(),
    );
  }
}
