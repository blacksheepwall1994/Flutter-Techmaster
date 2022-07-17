import 'package:flutter/material.dart';
import 'package:t2/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 150,
                    ),
                    Image.network(
                        'https://starcity.vinhomes.vn/wp-content/themes/vh-star-villas/assets/images/logo-footer.png'),
                    Container(
                      height: 40,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Số điện thoại',
                        labelStyle: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                    Container(
                      height: 15,
                    ),
                    const TextField(
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
                    Container(height: 20),
                    Row(children: [
                      Expanded(
                          child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Register(),
                            ),
                          );
                        },
                        child: Text('Đăng Ký'),
                      )),
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
                      )
                    ]),
                    Container(
                      height: 200,
                    ),
                  ],
                ),
              )),
              RichText(
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
            ],
          ),
        ),
      ),
    );
  }
}
