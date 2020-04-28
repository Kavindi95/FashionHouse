import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../controler/pants_api.dart';
import '../model/pants.dart';

class PantsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Pants Interface",
      home: ShowPantsList(),
    );
  }
}

class ShowPantsList extends StatefulWidget {
  ShowPantsList() : super();
  final String title = "Pants Store";
  ShowPantsListState createState() => ShowPantsListState();

}

class ShowPantsListState extends State<ShowPantsList> {

  bool showTextField = false;
  TextEditingController controller = TextEditingController();
  bool isEditing = false;
  Pants pantsnew;

  add(){
    if(isEditing){
      update(pantsnew, controller.text);
      setState(() {
        isEditing=false;
      });
    }else{
      addPants(controller.text);
    }
    controller.text='';
  }

  Widget buildBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: getPants(),
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
    final pants=Pants.fromSnapshot(data);
    return Padding(
      key:ValueKey(pants.pname),
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.brown),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: ListTile(
          title: Text(pants.pname),
          trailing: Wrap(
            spacing: 1,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: (){
                    delete(pants);
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

  setUpdateUI(Pants pant){

    controller.text = pant.pname;
    setState(() {
      showTextField = true;
      isEditing = true;
      pantsnew = pant;
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
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.brown,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: (){
              setState(() {
                showTextField = !showTextField;
              });
            },
          ),
        ],
      ),
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
              "Pants",
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