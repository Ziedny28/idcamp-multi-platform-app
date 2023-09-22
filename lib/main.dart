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
      // home: const Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: <Widget>[
      //     Icon(Icons.share),
      //     Icon(Icons.thumb_up),
      //     Icon(Icons.thumb_down),
      //     Text('test')
      //   ],
      // ),

      // home: const Column(
      //   children: <Widget>[
      //     Text(
      //       'Judul',
      //       style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      //     ),
      //     Text('data'),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: <Widget>[
      //         Icon(Icons.share),
      //         Icon(Icons.thumb_up),
      //         Icon(Icons.thumb_down),
      //       ],
      //     )
      //   ],
      // ),

      home: const LearnWidgetColumn(),
    );
  }
}

class LearnWidgetColumn extends StatelessWidget {
  const LearnWidgetColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        Text(
          'Titile',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut .',
          style: TextStyle(fontWeight: FontWeight.w100, fontSize: 10),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(Icons.share),
                Icon(Icons.thumb_up),
                Icon(Icons.thumb_down),
              ],
            ),
            Text('data')
          ],
        )
      ],
    );
  }
}
