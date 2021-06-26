import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:payflow/app_widget.dart';

void main() {
  runApp(AppFirebase());
}

class AppFirebase extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _AppFirebaseState createState() => _AppFirebaseState();
}

class _AppFirebaseState extends State<AppFirebase> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Material(
            child: Container(
              child: Center(
                child: Text(
                  "Ocorreu um erro!",
                  textDirection: TextDirection.ltr,
                ),
              ),
            ),
          );
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return AppWidget();
        }

        return Material(
          child: Center(
            child: CircularProgressIndicator(color: Colors.deepOrange),
          ),
        );
      },
    );
  }
}
