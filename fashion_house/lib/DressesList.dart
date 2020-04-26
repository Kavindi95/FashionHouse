import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'api.dart';
import 'dresses.dart';

class DressesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShowDressList(),
    );
  }
}

class ShowDressList extends StatefulWidget {
  ShowDressList() : super();
  ShowDressListState createState() => ShowDressListState();

}

class ShowDressListState extends State<ShowDressList> {
  bool showTextField = false;
  TextEditingController controller = TextEditingController();
  bool isEditing = false;
  Dresses dressnew;

  add(){
    if(isEditing){
      update(dressnew, controller.text);
      setState(() {
        isEditing=false;
      });
    }else{
      addDress(controller.text);
    }
    controller.text='';
  }

  Widget buildBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: getDresses(),
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
    final dress=Dresses.fromSnapshot(data);
    return Padding(
      key:ValueKey(dress.name),
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.brown),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: ListTile(
          title: Text(dress.name),
          trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed: (){
              delete(dress);
            },
          ),
          onTap: (){
            //update
            setUpdateUI(dress);
          },
        ),
      ),
    );
  }

  setUpdateUI(Dresses dress){
    controller.text = dress.name;
    setState(() {
      showTextField = true;
      isEditing = true;
      dressnew = dress;
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
              "Dresses",
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