import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(),
      home: const InputWidget(),
    );
  }
}

class InputWidget extends StatefulWidget {
  const InputWidget({super.key});

  @override
  State<InputWidget> createState() => _InputWidget();
}

class _InputWidget extends State<InputWidget> {
  // final String _name = '';
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // taking number when there's change
    // return Scaffold(
    //   body: TextField(
    //     onChanged: (String value) {
    //       setState(() {
    //         _name = value;
    //       });
    //     },
    //   ),
    // );

    //taking input after submit
    // return Scaffold(
    //   body: TextField(
    //     onSubmitted: (String value) {
    //       setState(() {
    //         _name = value;
    //       });
    //     },
    //   ),
    // );

    //using TextEditingController

    // return Scaffold(
    //   body: TextField(
    //     controller: _controller,
    //   ),
    // );
  }

  //for more efficient memory usage when using TextEditingController use this
  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }
}
