import 'package:chatrooms_app/screens/home.dart';
import 'package:chatrooms_app/text.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(

          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                   modified_text(color: Colors.black,size: 30,text:  "Welcome",),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Let's Connect! ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/Images/onboard.jpeg"))),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: <Widget>[
                    // the login button
                    TextField(
                      cursorColor: Colors.black,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelText: "Create an username",
                        labelStyle: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                        ),
                        contentPadding: EdgeInsets.all(10),
                        filled: true,
                        fillColor: Colors.grey[200],
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      controller: _usernameController,
                    ),
                    // creating the signup button
                    SizedBox(height: 20),
                    MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () async {
                        if (_usernameController.text != "" &&
                            !_usernameController.text.contains(' ')) {
                          SharedPreferences pref =
                              await SharedPreferences.getInstance();
                          pref.setString('userName', _usernameController.text);
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (_) {
                            return HomePage();
                          }));
                        } else {
                          showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              content: Text('Enter Valid Username'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(ctx).pop();
                                  },
                                  child: Container(
                                    color: Colors.greenAccent,
                                    padding: const EdgeInsets.all(14),
                                    child: const Text(
                                      "Ok",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }
                      },
                      color: Color(0xff0095FF),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "Continue",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
