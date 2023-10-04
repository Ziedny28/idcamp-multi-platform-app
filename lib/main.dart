import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Malang',
      theme: ThemeData(
        fontFamily: 'Oswald',
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});
  final String message = 'Hello from First Screen!';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
          child: ElevatedButton(
        child: const Text('Pindah Screen'),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SecondScreen(message);
          }));
        },
      )),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final String message;

  const SecondScreen(this.message, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message),
            OutlinedButton(
              child: const Text('Kembali'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
