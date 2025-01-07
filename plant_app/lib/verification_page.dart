import 'package:flutter/material.dart';
import 'package:plant_app/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VerificationPage(),
    );
  }
}

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _MainVerificationPage();
}

class _MainVerificationPage extends State<VerificationPage> {
  TextEditingController FirstDigitController = TextEditingController();
  TextEditingController SecondDigitController = TextEditingController();
  TextEditingController ThirdDigitController = TextEditingController();
  TextEditingController FourthDigitController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 32,
            color: const Color.fromRGBO(123, 123, 123, 1),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Icon(Icons.arrow_back),
              ),
              const Spacer(),
              Image.asset(
                "assets/images/otpcircle.jpg",
                width: 210,
                height: 128.2,
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 40, top: 20),
            child: Text(
              "Verification",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 40, top: 20, bottom: 20),
            child: Text(
              "Enter the OTP code from the phone we \njust sent you.",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1)),
                  child: Center(
                    child: TextField(
                      controller: FirstDigitController,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(8),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1)),
                  child: Center(
                    child: Center(
                      child: TextField(
                        controller: SecondDigitController,
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(8),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1)),
                  child: Center(
                    child: TextField(
                      controller: ThirdDigitController,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(8),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1)),
                  child: Center(
                    child: TextField(
                      controller: FourthDigitController,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 40),
            child: Text(
              "Don’t receive OTP code! Resend",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const HomePage();
              }));
            },
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 40, left: 40, right: 40),
              child: Container(
                width: 320,
                height: 50,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      Color.fromRGBO(62, 102, 24, 1),
                      Color.fromRGBO(124, 180, 70, 1)
                    ], begin: Alignment.bottomLeft, end: Alignment.topLeft),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text(
                  "Submit",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                )),
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
