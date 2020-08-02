import 'package:My_App_Calc_flutterWk2020/bio.dart';
import 'package:My_App_Calc_flutterWk2020/login.dart';
import 'package:flutter/material.dart';
import 'Calc.dart';
import 'stacks.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              '',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/Nature.jpeg'))),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Log In'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login(),
              ),)
            },
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Profile'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Contacts(),
              ),),
            },
          ),
          ListTile(
            leading: Icon(Icons.keyboard),
            title: Text('Calculator'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Calc()),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.storage),
            title: Text('Stack Structure'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Stacks(),
              ),),
            },
          ),
          
        ],
      ),
    );
  }
}
