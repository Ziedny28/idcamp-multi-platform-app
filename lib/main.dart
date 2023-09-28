import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(),
      home: const CheckBoxExample(),
    );
  }
}

class CheckBoxExample extends StatefulWidget {
  const CheckBoxExample({super.key});

  @override
  State<CheckBoxExample> createState() => _CheckBoxExample();
}

class _CheckBoxExample extends State<CheckBoxExample> {
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('checkBox'),
      ),
      body: ListTile(
        leading: Checkbox(
          value: agree,
          onChanged: (bool? value) {
            setState(() {
              agree = value!;
            });
          },
        ),
        title: const Text('agree/disagree'),
      ),
    );
  }
}
