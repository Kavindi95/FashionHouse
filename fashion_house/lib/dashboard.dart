import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'stockDet.dart';
import 'DressesList.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  static int val1 = 5;
  static int val2 = 10;
  static int val3 = 15;
  static int val4 = 20;
  static int revenue = 100000;
  static int cost = 50200;
  static String sval1 = val1.toString();
  static String sval2 = val2.toString();
  static String sval3 = val3.toString();
  static String sval4 = val4.toString();
  static String srevenue = revenue.toString();
  static String scost = cost.toString();
  List<Stock> stocks = [
    Stock(
        propertyOne: 'Low Stock',
        propertyTwo: 'Shipping',
        propertyThree: 'Orders',
        propertyFour: 'Dilivery',
        valueOne: sval1,
        valueTwo: sval2,
        valueThree: sval3,
        valueFour: sval4,
        tCost: scost,
        tRevenue: srevenue)
  ];

  //cardone
  Widget CardOne(stock) {
    return Card(
      color: Colors.brown[50],
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                      child: Container(
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage('images/iconone.png'),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                        child: Text(
                          stock.valueOne,
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  //cardTwo
  Widget CardTwo(stock) {
    return Card(
      color: Colors.brown[50],
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                      child: Container(
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage('images/icontwo.png'),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                        child: Text(
                          stock.valueTwo,
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  //CardThree
  Widget CardThree(stock) {
    return Card(
      color: Colors.brown[50],
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                      child: Container(
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage('images/iconorders.png'),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                        child: Text(
                          stock.valueThree,
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  //CardFour
  Widget CardFour(stock) {
    return Card(
      color: Colors.brown[50],
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                      child: Container(
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage:
                          AssetImage('images/icondelivery.png'),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                        child: Text(
                          stock.valueFour,
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  //CadrFive
  Widget CardFive(stock) {
    return Card(
      color: Colors.brown[50],
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                      child: Container(
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage('images/iconrevenue.png'),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                        child: Text(
                          "\$ " + stock.tRevenue,
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  //CardSiz
  Widget CardSix(stock) {
    return Card(
      color: Colors.brown[50],
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                      child: Container(
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage('images/iconcost.png'),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                        child: Text(
                          "\$ " + stock.tCost,
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

// card tempalte for Invetory Activities
  Widget CardOneTemplate(stock) {
    return Container(
      color: Colors.blue,
      child: Card(
        //color: Colors.teal,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/opacityone.png'),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                //row 1
                Row(
                  children: <Widget>[
//
                    Expanded(
                      flex: 2,
                      child: Container(),
                    ),
                    Expanded(
                        flex: 10,
                        child: Container(
                            child: Text(
                              'Inventory Activities',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.0,
                                  color: Colors.black),
                            ))),
                    Expanded(
                      flex: 2,
                      child: Container(),
                    ),
                  ],
                ),

                //divider 3
                Divider(
                  height: 20.0,
                  color: Colors.grey[600],
                ),
                //row 2
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: Text(
                          stock.propertyOne,
                          style: TextStyle(
                              fontSize: 17.0, color: Colors.grey[350]),
                        ),
                      ),
                    ),
                    Expanded(flex: 2, child: Container()),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          stock.valueOne,
                          style: TextStyle(
                              fontSize: 17.0, color: Colors.grey[350]),
                        ),
                      ),
                    ),
                  ],
                ),
//divider 2
                Divider(
                  height: 20.0,
                  color: Colors.grey[600],
                ),
                //row3
                Row(
                  children: <Widget>[
//
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: Text(
                          stock.propertyTwo,
                          style: TextStyle(
                              fontSize: 17.0, color: Colors.grey[350]),
                        ),
                      ),
                    ),
                    Expanded(flex: 2, child: Container()),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          stock.valueTwo,
                          style: TextStyle(
                              fontSize: 17.0, color: Colors.grey[350]),
                        ),
                      ),
                    ),
                  ],
                ),

                //divide 3
                Divider(
                  height: 20.0,
                  color: Colors.grey[600],
                ),
                //row 4
                Row(
                  children: <Widget>[
//
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: Text(
                          stock.propertyThree,
                          style: TextStyle(
                              fontSize: 17.0, color: Colors.grey[350]),
                        ),
                      ),
                    ),
                    Expanded(flex: 2, child: Container()),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          stock.valueThree,
                          style: TextStyle(
                              fontSize: 17.0, color: Colors.grey[350]),
                        ),
                      ),
                    ),
                  ],
                ),

                //divider 4
                Divider(
                  height: 20.0,
                  color: Colors.grey[600],
                ),
                //row 5
                Row(
                  children: <Widget>[
//
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: Text(
                          stock.propertyFour,
                          style: TextStyle(
                              fontSize: 17.0, color: Colors.grey[350]),
                        ),
                      ),
                    ),
                    Expanded(flex: 2, child: Container()),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          stock.valueFour,
                          style: TextStyle(
                              fontSize: 17.0, color: Colors.grey[350]),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //card template for total revenue
  Widget revenueCardTemplate(stock) {
    return Card(
      //color: Colors.lightGreen[300],
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: <Color>[
            Colors.lightGreen[700],
            Colors.lightGreen[600],
            Colors.lightGreen[400]
          ]),
        ),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Center(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                          child: Text(
                            'Total Revenue',
                            style: TextStyle(fontSize: 17.0),
                          ),
                        )),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
                      child: Center(
                        child: Text(
                          "\$ " + stock.tRevenue,
                          style: TextStyle(fontSize: 17.0),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget costCardTemplate(stock) {
    return Card(
      //color: Colors.amberAccent[100],
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.bottomLeft,
              //stops: [0.1, 0.3, 0.7],
              colors: [
                Colors.yellow[800],
                Colors.yellow[700],
                Colors.yellow[600]
              ]),
        ),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Center(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                          child: Text(
                            'Total Cost',
                            style: TextStyle(fontSize: 17.0),
                          ),
                        )),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
                      child: Center(
                        child: Text(
                          "\$ " + stock.tCost,
                          style: TextStyle(fontSize: 17.0),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
//        flexibleSpace: Container(
//          decoration: BoxDecoration(
//            gradient: LinearGradient(
//                begin: Alignment.topLeft,
//                end: Alignment.bottomRight,
//                stops: [0.1, 0.3, 0.7, 1],
//                colors: [Colors.amber[800], Colors.amber[700], Colors.amber[600], Colors.amber]
//            ),
//          ),
//        ),
          backgroundColor: Colors.brown,
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: <Color>[
                        Colors.brown[600],
                        Colors.brown,
                        Colors.brown[400]
                      ])),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                      child: Column(
                        children: <Widget>[
                          Material(
                            borderRadius:
                            BorderRadius.all(Radius.circular(40.0)),
                            elevation: 10,
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/logo.png'),
                              radius: 40.0,
                            ),
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              'Fashion House',
                              style: TextStyle(
                                  color: Colors.brown[50], fontSize: 25.0),
                            ),
                          )
//
                        ],
                      ),
                    ),
                  )),
              CustomListTile(
                Icons.filter_1,
                'Dresses',
                    () => {
                  //print('Hello'),
                  Navigator.push(context, MaterialPageRoute(builder: (context){return DressesList();})),

                },
              ),
              CustomListTile(Icons.filter_2, 'Shirts', () => {}),
              CustomListTile(Icons.filter_3, 'Pants', () => {}),
              //CustomListTile(Icons.filter_4, 'log out', () => {}),
              IconButton(icon: Icon(Icons.lock), onPressed: (){})
            ],
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/bodyone.png'), fit: BoxFit.cover)),
          child: Column(
            children: <Widget>[
              //SizedBox(height: 25.0),
              //Dashboard Row
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          'Dashboard',
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold),
                        ),
                      ))
                ],
              ),

              //DRow1
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
//                      row 1 space 1
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          child: Container(),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    // column for card 1
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children:
                        stocks.map((stock) => CardOne(stock)).toList()),
                  ),
                  Expanded(
                    flex: 1,
                    //row1 space 2
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          child: Container(),
                          color: Colors.orange,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    //column for card 2
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children:
                        stocks.map((stock) => CardTwo(stock)).toList()),
                  ),
                  Expanded(
                    flex: 1,
                    //row 1 space 3
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          child: Container(),
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  )
                ],
              ),

              SizedBox(height: 60.0),
              //DRow2

              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
//                      row 2 space 1
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          //color: Colors.blue,
                          child: Container(),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    // column for card 3
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children:
                        stocks.map((stock) => CardThree(stock)).toList()),
                  ),
                  Expanded(
                    flex: 1,
                    //row 2 space 2
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          child: Container(),
                          color: Colors.orange,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    //column for card 4
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children:
                        stocks.map((stock) => CardFour(stock)).toList()),
                  ),
                  Expanded(
                    flex: 1,
                    //row 2 space 3
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          child: Container(),
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 60.0),
              //DRow3
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
//                      row 3 space 1
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          color: Colors.blue,
                          child: Container(),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    // column for card 5
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children:
                        stocks.map((stock) => CardFive(stock)).toList()),
                  ),
                  Expanded(
                    flex: 1,
                    //row 3 space 2
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          child: Container(),
                          color: Colors.orange,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    //column for card 6
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children:
                        stocks.map((stock) => CardSix(stock)).toList()),
                  ),
                  Expanded(
                    flex: 1,
                    //row 3 space 3
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          child: Container(),
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}

class CustomListTile extends StatelessWidget {
  IconData icon;
  String description;
  Function onTap;

  CustomListTile(this.icon, this.description, this.onTap);
  @override
  Widget build(BuildContext context) {
    //inkwell is a button
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey[400]))),
        child: InkWell(
          splashColor: Colors.brown,
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 80.0,
                child: Row(
                  children: <Widget>[
                    Icon(icon),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 0.0, 8.0, 0.0),
                      child: Text(
                        description,
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ),
                  ],
                ),
              ),
              Icon(Icons.arrow_right)
            ],
          ),
        ),
      ),
    );
  }
}
