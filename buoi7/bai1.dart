import 'package:flutter/material.dart';
import 'bai2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(
        children: [
          //Padding(padding: EdgeInsets.only(top: 170)),
          Container(
            height: 150,
          ),
          Align(
            alignment: Alignment.center,
            child: Image.network(
                'https://starcity.vinhomes.vn/wp-content/themes/vh-star-villas/assets/images/logo-footer.png'),
          ),
          //Padding(padding: EdgeInsets.only(top: 40)),
          Container(
            height: 40,
          ),
          const SizedBox(
            height: 50,
            width: 300,
            child: SizedBox(
              width: 100.0,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Số điện thoại',
                  labelStyle: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ),
          ),
          Container(height: 20),
          const SizedBox(
            height: 50,
            width: 300,
            child: SizedBox(
              width: 100.0,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Mật khẩu',
                  labelStyle: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ),
          ),
          Container(height: 20),
          ListTile(
            title: Row(
              children: <Widget>[
                Container(width: 20),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      //print('abc');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Register(),
                        ),
                      );
                    },
                    child:
                        const Text("Đăng Ký", style: TextStyle(fontSize: 15)),
                  ),
                ),
                Container(width: 20),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 5, 95, 33)),
                    onPressed: () {},
                    child: const Text(
                      "Đăng Nhập",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Container(width: 30),
              ],
            ),
          ),
          Container(
            height: 200,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: RichText(
                text: const TextSpan(children: [
              TextSpan(
                text: 'HotLine: ',
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              TextSpan(
                text: '1800.1060',
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 5, 95, 33),
                ),
              ),
            ])),
          )
        ],
      ),
    );
  }
}

// class Register extends StatelessWidget {
//   const Register({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Second Route'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: const Text('Go back!'),
//         ),
//       ),
//     );
//   }
// }
