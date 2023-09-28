import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(),
      home: const InputAndPopup(),
    );
  }
}

class InputAndPopup extends StatefulWidget {
  const InputAndPopup({super.key});

  @override
  State<InputAndPopup> createState() => _InputAndPopup();
}

class _InputAndPopup extends State<InputAndPopup> {
  String _name = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                hintText: 'Write your name here',
                labelText: 'Your Name',
              ),
              onChanged: (String value) {
                setState(() {
                  _name = value;
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text('Helo $_name'),
                    );
                  },
                );
              },
              child: const Text('submit'),
            )
          ],
        ),
      ),
    );
  }
}

// class InputWidget extends StatefulWidget {
//   const InputWidget({super.key});

//   @override
//   State<InputWidget> createState() => _InputWidget();
// }

// class _InputWidget extends State<InputWidget> {
//  final String _name = '';
//  final TextEditingController _controller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//    // taking number when there's change
//    return Scaffold(
//      body: TextField(
//        onChanged: (String value) {
//          setState(() {
//            _name = value;
//          });
//        },
//      ),
//    );

//   // taking input after submit
//    return Scaffold(
//      body: TextField(
//        onSubmitted: (String value) {
//          setState(() {
//            _name = value;
//          });
//        },
//      ),
//    );

//   // using TextEditingController

//    return Scaffold(
//      body: TextField(
//        controller: _controller,
//      ),
//    );
//   }

// // for more efficient memory usage when using TextEditingController use this
//  @override
//  void dispose() {
//    _controller.dispose();
//    super.dispose();
//  }
// }
