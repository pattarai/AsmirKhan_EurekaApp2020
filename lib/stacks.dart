import 'package:flutter/material.dart';

class Stacks extends StatefulWidget {
  @override
  _StacksState createState() => _StacksState();
}

class _StacksState extends State<Stacks> {
  List<String> num = [];
  var count = 0;
  TextEditingController stackController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: 750,
          child: ListView(
            children: <Widget>[
              Container(
                height: 750,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        colors: [
                      Colors.orange[900],
                      Colors.orange[800],
                      Colors.orange[400]
                    ])),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "STACK EXERCISE",
                            style: TextStyle(color: Colors.white, fontSize: 40),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Welcome Back",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(60),
                                topRight: Radius.circular(60))),
                        
                          child: Padding(
                            padding: EdgeInsets.all(30),
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 40,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            color:
                                                Color.fromRGBO(225, 95, 27, .3),
                                            blurRadius: 20,
                                            offset: Offset(0, 10))
                                      ]),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color: Colors.grey[200]))),
                                        child: TextField(
                                          controller: stackController,
                                          keyboardType: TextInputType.phone,
                                          decoration: InputDecoration(
                                              hintText:
                                                  "Please Enter a Valid Integer",
                                              hintStyle: TextStyle(
                                                  color: Colors.black),
                                              border: InputBorder.none),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Container(
                                  height: 50,
                                  margin: EdgeInsets.symmetric(horizontal: 50),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.orange[900]),
                                  child: Center(
                                    child: RaisedButton(
                                      color: Colors.orange[900],
                                      child: Text(
                                        "PUSH",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          num.add(int.parse(stackController.text)
                                            .toString());
                                        count++;
                                        stackController.clear();
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  height: 50,
                                  margin: EdgeInsets.symmetric(horizontal: 50),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.blue[900]),
                                  child: Center(
                                    child: RaisedButton(
                                      color: Colors.blue[900],
                                      onPressed: () {
                                        setState(() {
                                          num.removeLast();
                                        count--;
                                        });
                                      },
                                      child: Text(
                                        "POP",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 40,
                                ),Text(
                                    'STACK LIST ITEMS:\n',style: TextStyle(
                                            color: Colors.purple,
                                            fontWeight: FontWeight.bold,fontSize: 20)
                                  ),
                                for (int i = count - 1; i >= 0; i--)
                                  Text(
                                    num.elementAt(i).toString(),style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold,fontSize: 18)
                                  ),
                                
                              ],
                            ),
                          ),
                        
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}