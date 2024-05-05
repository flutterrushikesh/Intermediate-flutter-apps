import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});
  @override
  State createState() => _ResultScreenState();
}

class _ResultScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.asset('./assets/images/result_screen.png'),
          Positioned(
            top: 80,
            left: 148,
            child: Column(
              children: [
                Text(
                  "Quiz result",
                  style: GoogleFonts.dmSans(
                      fontSize: 20,
                      color: const Color.fromRGBO(131, 76, 52, 1),
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Math",
                  style: GoogleFonts.dmSans(
                    fontSize: 15,
                    color: const Color.fromRGBO(131, 76, 52, 1),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    top: 70,
                    bottom: 20,
                  ),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(246, 221, 195, 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15),
                        margin: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromRGBO(248, 145, 87, 1),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Total won quiz's till now",
                                    style: GoogleFonts.dmSans(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    "Lorem Ipsum has been the industry's standard dummy scrambled it to make a type specimen book.",
                                    style: GoogleFonts.dmSans(
                                      fontSize: 10,
                                    ),
                                    textAlign: TextAlign.justify,
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                                top: 15, left: 30, right: 30, bottom: 15),
                            margin: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                15,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Solved \nQuestions",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.dmSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color:
                                        const Color.fromRGBO(131, 76, 52, 0.9),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "20",
                                  style: GoogleFonts.dmSans(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color:
                                          const Color.fromRGBO(131, 76, 52, 1)),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                top: 15, left: 30, right: 30, bottom: 15),
                            margin: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(26, 181, 134, 1),
                              borderRadius: BorderRadius.circular(
                                15,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Solved \nQuestions",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.dmSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "20",
                                  style: GoogleFonts.dmSans(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 160,
            top: 240,
            child: Container(
              alignment: Alignment.center,
              height: 85,
              width: 85,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(250, 245, 241, 1),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                  ),
                ],
                shape: BoxShape.circle,
              ),
              child: Text(
                "M",
                style: GoogleFonts.dmSans(
                  color: const Color.fromRGBO(200, 60, 0, 1),
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
