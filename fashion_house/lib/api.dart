import 'package:cloud_firestore/cloud_firestore.dart';
import 'dresses.dart';

String collectionName = "dresses";

//get dresses
getDresses() {
  return Firestore.instance.collection(collectionName).snapshots();
}
//add new dress
addDress(String Name){
  Dresses dress = Dresses(name: Name);
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
//update dresses
update(Dresses dress, String newName){
  try {
    Firestore.instance.runTransaction((transaction) async {
      await transaction.update(dress.reference, {'name': newName});
    });
  } catch(e) {
    print(e.toString());
  }
}
//delete a dress
delete(Dresses dress){
  Firestore.instance.runTransaction(
        (Transaction transaction) async{
      await transaction.delete(dress.reference);
    },
  );
}
