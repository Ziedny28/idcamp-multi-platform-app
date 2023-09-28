import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(),
      home: const ImageAssetExample(),
    );
  }
}

class ImageAssetExample extends StatelessWidget {
  const ImageAssetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('image'),
      ),
      body: Center(
        child: Image.network(
          'images/android.png',
          width: 200,
          height: 300,
        ),
      ),
    );
  }
}

// class ImageNetworkExample extends StatelessWidget {
//   const ImageNetworkExample({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('image'),
//       ),
//       body: Center(
//         child: Image.network(
//           'https://picsum.photos/200/300',
//           width: 200,
//           height: 300,
//         ),
//       ),
//     );
//   }
// }
