import 'package:cloud_firestore/cloud_firestore.dart';

class Shirts{
  String sname;
  DocumentReference reference;

  Shirts({this.sname});

  Shirts.fromMap(Map<String, dynamic> map, {this.reference}){
    sname=map["sname"];
  }

  Shirts.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);
  toJson() {
    return {'sname': sname};
  }
}