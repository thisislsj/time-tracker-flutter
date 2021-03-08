import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker_app/app/landing_page.dart';
import 'package:time_tracker_app/services/auth.dart';

Future<void> main() async {
  // If you're running an application and need to access the binary messenger before `runApp()` has been called
  // (for example, during plugin initialization), then you need to explicitly call
  // the `WidgetsFlutterBinding.ensureInitialized()` first.
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); //initialize firebase at the begining
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
      home: LandingPage(
        //passing an instance of AuthBase
        auth: Auth(),
      ),
    );
  }
}
