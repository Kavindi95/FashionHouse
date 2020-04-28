import 'package:cloud_firestore/cloud_firestore.dart';

class User{
  String uname;
  String password;
  String fname;
  DocumentReference reference;

  User({this.uname, this.password,this.fname});

  User.fromMap(Map<String, dynamic> map, {this.reference}){
    uname=map["uname"];
    password=map["password"];
    fname=map["fname"];
  }

  User.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);
  toJson() {
    return {'uname': uname, 'password':password,'fname':fname};
  }
}