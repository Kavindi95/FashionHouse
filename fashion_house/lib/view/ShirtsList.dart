import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../controler/shirts_api.dart';
import '../model/shirts.dart';

class ShirtsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShowShirtsList(),
    );
  }
}

class ShowShirtsList extends StatefulWidget {
  ShowShirtsList() : super();
  ShowShirtsListState createState() => ShowShirtsListState();

}

class ShowShirtsListState extends State<ShowShirtsList> {

  bool showTextField = false;
  TextEditingController controller = TextEditingController();
  bool isEditing = false;
  Shirts shirtsnew;

  add(){
    if(isEditing){
      update(shirtsnew, controller.text);
      setState(() {
        isEditing=false;
      });
    }else{
      addShirts(controller.text);
    }
    controller.text='';
  }

  Widget buildBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: getShirts(),
      builder: (context, snapshot) {
        if(snapshot.hasError) {
          return Text('Error ${snapshot.error}');
        }
        if(snapshot.hasData){
          print("Documents ${snapshot.data.documents.length}");
          return buildList(context, snapshot.data.documents);
        }
        return CircularProgressIndicator();
      },
    );
  }

  Widget buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
    return ListView(
      children: snapshot.map((data) => buildListItem(context, data)).toList(),
    );
  }

  Widget buildListItem(BuildContext context, DocumentSnapshot data){
    final shirts=Shirts.fromSnapshot(data);
    return Padding(
      key:ValueKey(shirts.sname),
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.brown),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: ListTile(
          title: Text(shirts.sname),
          trailing: Wrap(
            spacing: 1,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: (){
                    delete(shirts);
                  }
              ),
              IconButton(
                  icon: Icon(Icons.update),
                  onPressed: (){
                    print("update");
                  }
              )
            ],
          ),


          onTap: (){
            //update
            print('jfhgdjhfgfjgjehbrj');
            //setUpdateUI(dress);

          },
        ),

      ),
    );
  }

  setUpdateUI(Shirts shirts){

    controller.text = shirts.sname;
    setState(() {
      showTextField = true;
      isEditing = true;
      shirtsnew = shirts;
    });
  }

  button(){
    return SizedBox(
      width: double.infinity,
      child: OutlineButton(
        child: Text(isEditing ? "UPDATE" : "ADD"),
        onPressed: (){
          add();
          setState(() {
            showTextField = false;
          });
        },
      ),
    );
  }

  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            showTextField
                ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  controller: controller,
                  decoration: InputDecoration(
                      labelText: "Name",hintText:"Enter name"),
                ),
                SizedBox(
                  height: 10,
                ),
                button(),
              ],
            )
                :Container(),
            SizedBox(
              height: 20,
            ),
            Text(
              "Shirts",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              child: buildBody(context),
            ),
          ],
        ),
      ),
    );
  }
}
