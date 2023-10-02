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
      home: const ScrollingScreenListViewBuilder(),
    );
  }
}

class ScrollingScreenListViewSeparated extends StatelessWidget {
  const ScrollingScreenListViewSeparated({super.key});

  @override
  Widget build(BuildContext context) {
    const List<int> numberList = <int>[1, 2, 3, 4, 5, 6, 7, 8];

    return Scaffold(
      body: ListView.separated(
        itemCount: numberList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: Center(
                child: Text(
              '${numberList[index]}',
              style: const TextStyle(fontSize: 50),
            )),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
    );
  }
}

class ScrollingScreenListViewBuilder extends StatelessWidget {
  const ScrollingScreenListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    const List<int> numberList = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9];

    return Scaffold(
        body: ListView.builder(
            itemCount: numberList.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Center(
                    child: Text(
                  '${numberList[index]}',
                  style: const TextStyle(fontSize: 50),
                )),
              );
            }));
  }
}

class ScrollingScreen extends StatelessWidget {
  const ScrollingScreen({super.key});
  final List<int> numberList = const <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
            children: numberList.map((number) {
      return Container(
        height: 250,
        decoration: BoxDecoration(
          color: Colors.grey,
          border: Border.all(color: Colors.black),
        ),
        child: Center(
          child: Text(
            '$number',
            style: const TextStyle(fontSize: 50),
          ),
        ),
      );
    }).toList()));
  }
}
