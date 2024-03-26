import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAUN13Hvh76CBsSsBvg5L16OjIxevUVVrc",
            authDomain: "ciyuapp.firebaseapp.com",
            projectId: "ciyuapp",
            storageBucket: "ciyuapp.appspot.com",
            messagingSenderId: "117105078251",
            appId: "1:117105078251:web:f7d6b8d98b945b120733ae",
            measurementId: "G-6PENLBLWNT"));
  } else {
    await Firebase.initializeApp();
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase Login',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginForm(),
        '/dashboard': (context) => Dashboard(),
      },
    );
  }
}
