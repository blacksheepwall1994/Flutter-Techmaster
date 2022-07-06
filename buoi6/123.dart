import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  PageController pageController = PageController();
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  Widget build1() {
    return (Column(
      children: [
        Container(
          height: 10,
        ),
        Container(
          height: 40,
          width: 380,
          color: Color.fromARGB(255, 216, 216, 216),
          child: Row(children: [
            Container(
              width: 25,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.home),
              ],
            ),
            Container(
              width: 25,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  '1625 Main Street',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                Text(
                  'My City, CA 99984',
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ]),
        ),
        Container(
          height: 4,
        ),
        Container(
            width: 380,
            color: Color.fromARGB(255, 216, 216, 216),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 10,
                ),
                Row(children: [
                  Container(
                    width: 25,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.phone),
                    ],
                  ),
                  Container(
                    width: 25,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        '(408) 555-1212',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ]),
                Container(
                  height: 10,
                ),
                Row(children: [
                  Container(
                    width: 25,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.mail),
                    ],
                  ),
                  Container(
                    width: 25,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        'abcxyz@quacquac.com',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ]),
                Container(
                  height: 10,
                ),
              ],
            )),
      ],
    ));
  }

  Widget build2() {
    return (Row(
      children: [
        Column(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 216, 216, 216),
              ),
              child: const Center(
                child: Text(
                  'Intermediate',
                  style: TextStyle(color: Color.fromARGB(255, 67, 64, 68)),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(5)),
            Text('Today\'s', style: TextStyle(fontSize: 17)),
            Text('Challenge', style: TextStyle(fontSize: 17)),
            Padding(padding: EdgeInsets.all(10)),
            const Text('German Meals',
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(255, 21, 185, 236))),
            Padding(padding: EdgeInsets.all(5)),
            Container(
                child: Row(
              children: const [
                Icon(Icons.abc),
                Text('Take this lesson to\n earn a new milestone')
              ],
            ))
          ],
        ),
        Column(
          children: [
            Container(
              height: 100,
              width: 100,
              child: const Image(
                  image:
                      NetworkImage('https://i.imgflip.com/3rz1d4.jpg?a460200')),
            ),
          ],
        ),
      ],
    ));
  }

  Widget build3() {
    return (Container(
      height: 100,
      width: 100,
      child: CircleAvatar(
        backgroundImage: const NetworkImage(
          'https://i.imgflip.com/3rz1d4.jpg?a460200',
        ),
        child: Text(
          'A',
          style: TextStyle(
              background: Paint()..color = Color.fromARGB(60, 0, 0, 0),
              fontSize: 40),
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nguyễn Trung Hiếu'),
      ),
      body: PageView(
        controller: pageController,
        children: [
          build1(),
          build2(),
          build3(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: 'Bai1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow),
            label: 'Bai2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ios_share),
            label: 'Bai3',
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 3, 100, 246),
        onTap: _onItemTapped,
      ),
    );
  }
}
