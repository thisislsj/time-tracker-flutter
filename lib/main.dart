import 'package:flutter/material.dart';
import 'package:time_tracker_app/app/sign_in/sign_in_page.dart';

void main() {
  runApp(MyApp());
}

//type st for shortcut
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

//tell compiler we are overriding a methd from superclass
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time Tracker',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: SignInPage(),
    );
  }
}
