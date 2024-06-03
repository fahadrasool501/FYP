import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:fyp_orvba/Business%20Screens/business_dashboard.dart';
import 'package:fyp_orvba/Common/welcome_screen.dart';

import 'Common/auth/login_screen.dart';

final FirebaseDatabase database = FirebaseDatabase.instance;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyD4LFWMPsNO0CjrJCXn8iOiGTghqUuB4rE",
      authDomain: "your_auth_domain",
      projectId: "fyp-project-7aaa0",
      storageBucket: "fyp-project-7aaa0.appspot.com",
      messagingSenderId: "1095658387183",
      appId: "1:1095658387183:android:859749c0b8a38b8f3f0d1a",
      databaseURL: "https://fyp-project-7aaa0-default-rtdb.firebaseio.com/",
    ),
  );
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
