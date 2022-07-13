import 'package:flutter/material.dart';

//bài này em chưa làm được cái nút bấm ở trên appbar để quay lại ạ
class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, top: 40),
            height: 40,
            //color: Colors.black,
            alignment: Alignment.bottomLeft,
            child: InkWell(
              onTap: () => {
                Navigator.pop(context),
                //print('abc'),
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),

          //Padding(padding: EdgeInsets.only(top: 170)),
          Container(
            height: 90,
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
                  labelText: 'Họ & Tên',
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
                Container(width: 200),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 5, 95, 33)),
                    onPressed: () {},
                    child: const Text(
                      "Đăng Ký",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Container(width: 30),
              ],
            ),
          ),
          Container(
            height: 120,
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
