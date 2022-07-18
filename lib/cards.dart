import 'package:flutter/material.dart';

class CardS extends StatefulWidget {
  const CardS({Key? key}) : super(key: key);

  @override
  State<CardS> createState() => _CardSState();
}

class _CardSState extends State<CardS> {
  var locked = false;
  var opened = [false, false, false, false, false, false];
  String lastOpened = '';
  var cardData = ['cat1', 'cat2', 'dog1', 'dog2', 'goat1', 'goat2'];
  // Map cardData = {
  //   0: 'cat1',
  //   1: 'cat2',
  //   2: 'dog1',
  //   3: 'dog2',
  //   4: 'goat1',
  //   5: 'goat2',
  // };

  Widget renderImage(index) {
    if (opened[index]) {
      return Image.asset(('images/${cardData[index]}.jpeg'), fit: BoxFit.cover);
    } else {
      return Center(
        child: Container(
          decoration: const BoxDecoration(color: Colors.red),
        ),
      );
    }
  }

  Widget buidItem(index) {
    return InkWell(
      onTap: (() {
        setState(() {
          if (locked) return;
          String str = cardData[index].substring(0, cardData[index].length - 1);
          if (lastOpened == '') {
            opened[index] = true;
            lastOpened = str;
          } else {
            if (lastOpened == str) {
              opened[index] = true;
              lastOpened = '';
            } else {
              locked = true;
              opened[index] = true;
              Future.delayed(const Duration(seconds: 2), () {
                setState(() {
                  opened = [false, false, false, false, false, false];
                  locked = false;
                  lastOpened = '';
                });
              });
            }
          }
          print(str);
        });
      }),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: renderImage(index),
      ),
    );
  }

  Widget buildGrid() {
    return SafeArea(
      top: true,
      bottom: true,
      child: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) => buidItem(index),
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 1,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card'),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: true,
        child: Column(
          children: [
            Expanded(
              child: buildGrid(),
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    opened = [false, false, false, false, false, false];
                    cardData.shuffle();
                  });
                },
                child:
                    const Text('Restart Game', style: TextStyle(fontSize: 20))),
          ],
        ),
      ),
    );
  }
}
