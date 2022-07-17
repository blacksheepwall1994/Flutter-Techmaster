import 'package:flutter/material.dart';

class Chess extends StatefulWidget {
  const Chess({Key? key}) : super(key: key);

  @override
  State<Chess> createState() => _ChessState();
}

class _ChessState extends State<Chess> {
  bool colorPicker(index) {
    int count = 0;
    if (index % 2 == 0) {
      count++;
      if (count == 7) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  Widget buidItem(index) {
    // print(index);
    return Container(
      decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(20),
          color: colorPicker(index) ? Colors.black : Colors.white),
      child: Text(index.toString()),
    );
  }

  Widget buildGrid() {
    return SafeArea(
      top: true,
      bottom: true,
      child: GridView.builder(
          padding: const EdgeInsets.all(10),
          itemBuilder: (context, index) => buidItem(index),
          itemCount: 64,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 8,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1,
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      backgroundColor: Colors.blue,
      body: buildGrid(),
    );
  }
}
