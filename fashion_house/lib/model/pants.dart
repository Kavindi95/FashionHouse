import 'package:cloud_firestore/cloud_firestore.dart';

class Pants{
  String pname;
  int pprice;
  DocumentReference reference;

  Pants({this.pname, this.pprice});

  Pants.fromMap(Map<String, dynamic> map, {this.reference}){
    pname=map["pname"];
    pprice=map["pprice"];
  }

  Pants.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);
  toJson() {
    return {'pname': pname, 'pprice':pprice};
  }
}