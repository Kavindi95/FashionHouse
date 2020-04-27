import 'package:cloud_firestore/cloud_firestore.dart';

class Dresses{
  String name;
  DocumentReference reference;

  Dresses({this.name});

  Dresses.fromMap(Map<String, dynamic> map, {this.reference}){
    name=map["name"];
  }

  Dresses.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);
  toJson() {
    return {'name': name};
  }
}