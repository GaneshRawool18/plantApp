import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MainHomePagePage();
}

class _MainHomePagePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 42,
              color: const Color.fromRGBO(123, 123, 123, 1),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  "assets/images/homecircle.jpg",
                  width: 210,
                  height: 128.2,
                ),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Text(
                    "Find your \nfavorite plants",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: const Color.fromARGB(255, 13, 13, 13)
                                  .withOpacity(0.5),
                              offset: const Offset(0, 6),
                              blurStyle: BlurStyle.outer,
                              blurRadius: 4.0)
                        ],
                        color: Colors.white),
                    child: const Icon(Icons.card_travel_outlined,
                        color: Color.fromARGB(255, 67, 168, 70)),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 20,
              ),
              child: SizedBox(
                height: 108,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 310,
                        margin: const EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(204, 231, 185, 1)),
                        child: Row(
                          children: [
                            const Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 20, top: 30),
                                  child: Text(
                                    "30% OFF",
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Text(
                                  "02-23 April",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Image.asset(
                                "assets/images/homepot.jpg",
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Indoor",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 20),
              child: SizedBox(
                height: 188,
                child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 141,
                        margin: const EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  offset: const Offset(0, 5),
                                  blurRadius: 2.0,
                                  blurStyle: BlurStyle.outer)
                            ]),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, left: 10, right: 10),
                              child: Image.asset(
                                "assets/images/cartpot.jpg",
                                width: 90.24,
                                height: 112.8,
                              ),
                            ),
                            Text("Snake Plants",
                                style: GoogleFonts.dmSans(
                                  fontSize: 13.16,
                                  fontWeight: FontWeight.w400,
                                )),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 30, top: 10),
                                  child: Text(
                                    "₹350",
                                    style: GoogleFonts.poppins(
                                        fontSize: 16.29,
                                        fontWeight: FontWeight.w600,
                                        color: const Color.fromRGBO(
                                            62, 102, 24, 1)),
                                  ),
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color.fromARGB(
                                          255, 236, 233, 233),
                                    ),
                                    child: const Icon(
                                      Icons.card_travel_outlined,
                                      color: Color.fromRGBO(62, 102, 24, 1),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Outdoor",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 20),
              child: SizedBox(
                height: 188,
                child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 141,
                        margin: const EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  offset: const Offset(0, 5),
                                  blurRadius: 2.0,
                                  blurStyle: BlurStyle.outer)
                            ]),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, left: 10, right: 10),
                              child: Image.asset(
                                "assets/images/cartpot.jpg",
                                width: 90.24,
                                height: 112.8,
                              ),
                            ),
                            Text("Snake Plants",
                                style: GoogleFonts.dmSans(
                                  fontSize: 13.16,
                                  fontWeight: FontWeight.w400,
                                )),
                          ],
                        ),
                      );
                    }),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 44,
              color: const Color.fromRGBO(123, 123, 123, 1),
            ),
          ],
        ),
      ),
    );
  }
}
