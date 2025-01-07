import 'package:flutter/material.dart';
import 'package:plant_app/login_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetStartedPage(),
    );
  }
}

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _MainGetStartedPage();
}

class _MainGetStartedPage extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 32,
            color: const Color.fromRGBO(123, 123, 123, 1),
          ),
          // SvgPicture.asset("assets/svg/getplant.svg")
          Container(
            width: MediaQuery.of(context).size.width,
            height: 464,
            child: Image.asset(
              "assets/images/getplant.jpg",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Container(
              width: 247,
              height: 95,
              child: const Text("Enjoy your\nlife with Plants",
                  style: TextStyle(
                    fontSize: 34.2,
                    fontWeight: FontWeight.w400,
                  )),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const LoginPage();
              }));
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                width: 320,
                height: 50,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      Color.fromRGBO(62, 102, 24, 1),
                      Color.fromRGBO(124, 180, 70, 1)
                    ], begin: Alignment.bottomLeft, end: Alignment.topLeft),
                    borderRadius: BorderRadius.circular(20)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      " Get Started",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const Spacer(),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 44,
            color: const Color.fromRGBO(123, 123, 123, 1),
          )
        ],
      ),
    );
  }
}
