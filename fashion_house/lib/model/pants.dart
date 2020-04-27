import 'package:cloud_firestore/cloud_firestore.dart';

class Pants{
  String name;
  DocumentReference reference;

  Pants({this.name});

  Pants.fromMap(Map<String, dynamic> map, {this.reference}){
    name=map["name"];
  }

  Pants.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);
  toJson() {
    return {'name': name};
  }
}