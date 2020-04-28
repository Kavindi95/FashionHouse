import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/user.dart';

String collectionName = "user";

addUsers(String uname, String password, String fname){
  User user = User(uname: uname, password: password,fname:fname);
  //Shirts dressPrice = Shirts(sprice: Price);
  try{
    Firestore.instance.runTransaction(
          (Transaction transaction) async{
        await Firestore.instance
            .collection(collectionName)
            .document()
            .setData(user.toJson());
      },
    );
  } catch(e){
    print(e.toString());
  }
}