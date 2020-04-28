import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../controler/user_api.dart';
import '../main.dart';
import '../view/dashboard.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController unamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController firstnamecontroller = TextEditingController();


  add(){


    addUsers(unamecontroller.text,passwordcontroller.text,firstnamecontroller.text);

    unamecontroller.text='';
    passwordcontroller.text='';
    firstnamecontroller.text='';
   ;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: Colors.brown,
//      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  //Colors.red[200],
                  Colors.brown[300],
                  Colors.grey[50]
                ])),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(

          children: <Widget>[
            //Divider(height: 70.0,),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0.0,70.0,20.0,10.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/logo.png'),
                  radius: 60.0,
                ),
              ),
            ),
            // Divider(height: 50.0, color: Colors.brown[700], thickness: 5.0,),
//            Row(
//              mainAxisAlignment: MainAxisAlignment.start,
//              children: <Widget>[
//                Text('Sign Up',
//                  style: TextStyle(fontStyle: FontStyle.italic,fontSize: 30.0),),
//              ],
//            ),
            Divider(height:30.0),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0.0),
                child: TextFormField(
                 // obscureText: true,
                  controller: firstnamecontroller,
                  decoration: InputDecoration(
                      filled: true,

                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(30.0),
                        ),
                      ),
                      labelText: "First name",hintText:"Enter firstname"),
                ),
              ),
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0.0),
                child: TextFormField(
                  controller: unamecontroller,
                  decoration: InputDecoration(
                      filled: true,

                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(30.0),
                        ),
                      ),
                      labelText: "Username",hintText:"Enter username"),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
                child: TextFormField(
                  obscureText: true,
                  controller: passwordcontroller,
                  decoration: InputDecoration(
                      filled: true,
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(30.0),
                        ),
                      ),
                      labelText: "Password",hintText:"Enter password"),
                ),
              ),
            ),

            Center(
              child: RaisedButton(onPressed: (){
                add();
                Navigator.push(context, MaterialPageRoute(builder: (context){return Dashboard();}));
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('SIGN UP',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 20.0),),
              ),
              color: Colors.yellow[700],),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text('Already have an account?',style: TextStyle(fontSize: 15.0),),
              ),
            ),
            Center(
              child: RaisedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){return MyHomePage();}));
              },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('SIGN IN',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 20.0,color: Colors.white),),
                ),
                color: Colors.teal[800],),
            )
          ],
        ),
      ),
    );
  }
}
