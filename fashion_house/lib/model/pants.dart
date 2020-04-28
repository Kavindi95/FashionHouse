import 'package:cloud_firestore/cloud_firestore.dart';

class Pants{
  String pname;
  DocumentReference reference;

  Pants({this.pname});

  Pants.fromMap(Map<String, dynamic> map, {this.reference}){
    pname=map["pname"];
  }

  Pants.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);
  toJson() {
    return {'pname': pname};
  }
}