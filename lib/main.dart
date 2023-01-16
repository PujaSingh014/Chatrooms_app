
import 'package:chatrooms_app/shared/helper_function.dart';
import 'package:chatrooms_app/screens/home.dart';
import 'package:chatrooms_app/screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'firebase_options.dart';




Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SharedPreferences prefs =await SharedPreferences.getInstance();
  var uname=prefs.getString("userName");
  print(uname);

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: uname==null ?WelcomePage():HomePage(),));

}

