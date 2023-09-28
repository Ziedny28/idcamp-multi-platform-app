import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(),
      home: const LearnButton(),
    );
  }
}

class LearnButton extends StatefulWidget {
  const LearnButton({Key? key}) : super(key: key);

  @override
  State<LearnButton> createState() => _LearnButton();
}

class _LearnButton extends State<LearnButton> {
  String? language;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              child: const Text("elevated button"),
              onPressed: () {},
            ),
            TextButton(
              onPressed: () {},
              child: const Text('text button'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('oulined button'),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.volume_up),
            ),
            DropdownButton<String>(
              items: const <DropdownMenuItem<String>>[
                DropdownMenuItem<String>(
                  value: 'dart',
                  child: Text('dart'),
                ),
                DropdownMenuItem<String>(
                  value: 'java',
                  child: Text('java'),
                ),
                DropdownMenuItem<String>(
                  value: 'typescript',
                  child: Text('typescript'),
                )
              ],
              value: language,
              hint: const Text('select language'),
              onChanged: (String? value) {
                setState(() {
                  language = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: const Text(
                'Farm House Malang',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.calendar_today),
                      SizedBox(height: 8.0),
                      Text('Open Everyday'),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.access_time),
                      SizedBox(height: 8.0),
                      Text('09:00 - 20:00')
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.monetization_on),
                      SizedBox(height: 8.0),
                      Text('Rp 25.000'),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Malang go brr',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
