import 'package:chatrooms_app/screens/chat.dart';
import 'package:chatrooms_app/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../screens/welcome.dart';



class NavDrawer extends StatefulWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  var uname;
  void initState() {
    super.initState();
    loadCounter();
  }
  void loadCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      uname = prefs.getString('userName');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.pink[200],
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height:80,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.pink[500],
              ),
              padding: EdgeInsets.only(top: 10),
              child: ListTile(
                leading: Icon(Icons.home,color: Colors.white,),
                title: Text('Home',style: TextStyle(color: Colors.white),),
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (_) {
                          return HomePage();
                        }));
                  }
      ),),
          ),
          ListTile(
              leading: Icon(Icons.laptop_chromebook,color: Colors.white,),
              title: Text('Coding',style: TextStyle(color: Colors.white),),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (_) {
                      return Chat(uname: uname, collName: 'Coding', roomName: 'Coding');
                    }));
              }),
          ListTile(
              leading: Icon(Icons.sports_basketball,color: Colors.white,),
              title: Text('Football',style: TextStyle(color: Colors.white),),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (_) {
                      return Chat(uname: uname, collName: 'Football', roomName: 'Football');
                }));
              }),
          ListTile(
            leading: Icon(Icons.camera_alt,color: Colors.white,),
            title: Text('Photography',style: TextStyle(color: Colors.white),),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (_) {
                    return Chat(uname: uname, collName: 'Photography', roomName: 'Photography');
                  }));
            }),
          ListTile(
              leading: Icon(Icons.music_note,color: Colors.white,),
              title: Text('Dance',style: TextStyle(color: Colors.white),),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (_) {
                      return Chat(uname: uname, collName: 'Dance', roomName: 'Dance');
                }));
              }),
          ListTile(
            leading: Icon(Icons.draw,color: Colors.white,),
            title: Text('Art',style: TextStyle(color: Colors.white),),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (_) {
                    return Chat(uname: uname, collName: 'Art', roomName: 'Art');
                  }));
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app,color: Colors.white,),
            title: Text('Logout',style: TextStyle(color: Colors.white),),
            onTap: () async{
              SharedPreferences pref =await SharedPreferences.getInstance();
              pref.remove('userName');
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
                return WelcomePage();
              }));
            },
          ),
        ],
      ),
    );
  }
}
