import 'package:cloud_firestore/cloud_firestore.dart';

class TransactionDet{
  String description;
  int cost;
  int revenue;
  DocumentReference reference;

  TransactionDet({this.description, this.cost,this.revenue});

  TransactionDet.fromMap(Map<String, dynamic> map, {this.reference}){
    description=map["description"];
    cost=map["cost"];
    revenue=map["revenue"];
  }

  TransactionDet.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);
  toJson() {
    return {'description': description, 'cost':cost,'revenue':revenue};
  }
}