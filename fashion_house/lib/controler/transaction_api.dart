import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/Transaction.dart';

String collectionName = "transactions";

getTransactions() {
  return Firestore.instance.collection(collectionName).snapshots();
}


addTransaction(String description, int cost, int revenue){
  TransactionDet tr = TransactionDet(description: description, cost: cost,revenue:revenue);
  //Shirts dressPrice = Shirts(sprice: Price);
  try{
    Firestore.instance.runTransaction(
          (Transaction transaction) async{
        await Firestore.instance
            .collection(collectionName)
            .document()
            .setData(tr.toJson());
      },
    );
  } catch(e){
    print(e.toString());
  }
}

//update a transaction
update(TransactionDet tr, String description, int cost, int revenue){
  try {
    Firestore.instance.runTransaction((transaction) async {
      await transaction.update(tr.reference, {'description': description,'revenue':revenue,'cost':cost});
    });
  } catch(e) {
    print(e.toString());
  }
}
//delete a pant
delete(TransactionDet tr){
  Firestore.instance.runTransaction(
        (Transaction transaction) async{
      await transaction.delete(tr.reference);
    },
  );
}