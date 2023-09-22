import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: const Center(
        //   child: Text(
        //     'Text berada di tengah',
        //     style: TextStyle(
        //         color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 40),
        //   ),
        // ),

        home: const Padding(
          padding: EdgeInsets.all(30),
          child: Text(
            'ini padding',
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 40),
          ),
        ));
  }
}
