import 'package:flutter/material.dart';
import 'view/dashboard.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Container(
        child: Column(
          children: <Widget>[
            Text('Login'),
            RaisedButton(onPressed: (){
              print('go to dashboard');
              Navigator.push(context, MaterialPageRoute(builder: (context){return Dashboard();}));
            },
              child:Text('go to dashboard'),
            )
          ],
        ),
      ),
    );


  }
}

