import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/pants.dart';

String collectionName = "pants";

//get pants
getPants() {
  return Firestore.instance.collection(collectionName).snapshots();
}

//add a new pant
addPants(String Name){
  Pants dress = Pants(pname: Name);
  try{
    Firestore.instance.runTransaction(
          (Transaction transaction) async{
        await Firestore.instance
            .collection(collectionName)
            .document()
            .setData(dress.toJson());
      },
    );
  } catch(e){
    print(e.toString());
  }
}

//update a pant
update(Pants dress, String newName){
  try {
    Firestore.instance.runTransaction((transaction) async {
      await transaction.update(dress.reference, {'pname': newName});
    });
  } catch(e) {
    print(e.toString());
  }
}
//delete a pant
delete(Pants dress){
  Firestore.instance.runTransaction(
        (Transaction transaction) async{
      await transaction.delete(dress.reference);
    },
  );
}
