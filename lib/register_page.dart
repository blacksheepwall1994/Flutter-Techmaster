import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: true,
        bottom: true,
        child: Column(
          children: [
            Container(
              height: 40,
              alignment: Alignment.bottomLeft,
              child: InkWell(
                onTap: () => {
                  Navigator.pop(context),
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            height: 20,
                          ),
                          Image.network(
                              'https://starcity.vinhomes.vn/wp-content/themes/vh-star-villas/assets/images/logo-footer.png'),
                          Container(
                            height: 40,
                          ),
                          const TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Họ & Tên',
                              labelStyle: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                          Container(height: 20),
                          const TextField(
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
                          Container(height: 20),
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
                            Container(
                              width: 200,
                            ),
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
                            )
                          ]),
                        ],
                      ),
                    )
                    //
                  ],
                ),
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
    );
  }
}
