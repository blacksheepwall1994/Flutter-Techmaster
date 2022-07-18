import 'package:flutter/material.dart';
import 'chess_data.dart';

class Chess extends StatefulWidget {
  const Chess({Key? key}) : super(key: key);

  @override
  State<Chess> createState() => _ChessState();
}

class _ChessState extends State<Chess> {
  var abc = [
    [1, 0, 1, 0, 1, 0, 1, 0],
    [0, 1, 0, 1, 0, 1, 0, 1]
  ];
  Widget buidItem(index) {
    return Container(
      decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(20),
          // color: board[index] ? Colors.black : Colors.white),
          color: (index + index ~/ 8) % 2 == 0 ? Colors.black : Colors.white),
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
            childAspectRatio: 1,
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chess'),
      ),
      backgroundColor: Colors.blue,
      body: buildGrid(),
    );
  }
}
