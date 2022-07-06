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
        Row(
          children: [
            const Text(
              'Tasks',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              width: 220,
            ),
            Text('View All'),
          ],
        ),
        Row(children: [
          Icon(Icons.circle),
          Container(
            width: 130,
          ),
          Text('fishing'),
          Container(
            width: 100,
          ),
          Icon(Icons.two_k_outlined),
        ]),
        Row(children: [
          Icon(Icons.circle),
          Container(
            width: 130,
          ),
          Text('Meeting with Joe'),
          Container(
            width: 32,
          ),
          Icon(Icons.two_k_outlined),
        ]),
      ],
    ));
  }

  Widget build2() {
    return (Column(
      children: [
        Row(
          children: [
            Text(
              'Design Project',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Container(
              width: 190,
            ),
            Icon(Icons.two_k_outlined),
          ],
        ),
        Row(
          children: [
            Icon(Icons.door_back_door),
            Text('18%'),
          ],
        ),
        Container(
          height: 20,
        ),
        Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Assigned to'),
                Icon(Icons.abc),
              ],
            ),
            Container(
              width: 100,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Task'),
                Text(
                  '24',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            Container(
              width: 100,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Hours'),
                Text(
                  '190',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        )
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
            label: 'Bai4',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow),
            label: 'Bai5',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ios_share),
            label: 'Bai6',
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
