import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(title: Text('BIO'),backgroundColor: Colors.teal,),
          backgroundColor: Colors.teal,
          body: SafeArea(
              child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 20,),
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/Nihal.jpeg'),
                ),
                Text(
                  'NIHAL MATHEW',
                  style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                      color: Colors.white),
                ),
                Text(
                  'ECE- 4th YR',
                  style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 18.0,
                      letterSpacing: 2.5,
                      color: Colors.blue.shade50),
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 48.0, vertical: 8.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal.shade400,
                    ),
                    title: Text(
                      '7358303663',
                      style: TextStyle(color: Colors.teal.shade400),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 48.0, vertical: 8.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal.shade400,
                    ),
                    title: Text(
                      'Nihalmathew@gmail.com',
                      style: TextStyle(color: Colors.teal.shade400),
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/Asmir.jpeg'),
                ),
                Text(
                  'Asmir Khan',
                  style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                      color: Colors.white),
                ),
                Text(
                  'CSE- 1st Yr',
                  style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 18.0,
                      letterSpacing: 2.5,
                      color: Colors.blue.shade50),
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 48.0, vertical: 8.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal.shade400,
                    ),
                    title: Text(
                      '908765764',
                      style: TextStyle(color: Colors.teal.shade400),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 48.0, vertical: 8.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal.shade400,
                    ),
                    title: Text(
                      'Asmirkhan7@gmail.com',
                      style: TextStyle(color: Colors.teal.shade400),
                    ),
                  ),
                ),
              ],
            ),
          ))),
    );
  }
}
