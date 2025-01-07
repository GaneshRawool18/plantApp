import 'package:flutter/material.dart';
import 'package:plant_app/verification_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _MainLoginPagePage();
}

class _MainLoginPagePage extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 32,
            color: const Color.fromRGBO(123, 123, 123, 1),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/logincircle.jpg",
                width: 210,
                height: 128.2,
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              "Log in",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 30, right: 15),
                    child: Icon(
                      Icons.call,
                      color: Colors.grey,
                    ),
                  ),
                  hintText: " Mobile Number",
                  hintStyle:
                      TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const VerificationPage();
              }));
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Container(
                width: 320,
                height: 50,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      Color.fromRGBO(62, 102, 24, 1),
                      Color.fromRGBO(124, 180, 70, 1)
                    ], begin: Alignment.bottomLeft, end: Alignment.topLeft),
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                    child: Text(
                  "Log in",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                )),
              ),
            ),
          ),
          Image.asset(
            "assets/images/loginplant.jpg",
            height: 350,
          ),
          const Spacer(),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 44,
            color: const Color.fromRGBO(123, 123, 123, 1),
          ),
        ],
      ),
    );
  }
}
