import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/views/math_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State createState() => _HomeScreenState();
}

class _HomeScreenState extends State {
  List subList = [
    {
      'logo': "M",
      'sub': 'Math',
      'icon': '>',
    },
    {
      'logo': "H",
      'sub': 'History',
      'icon': '>',
    },
    {
      'logo': "G",
      'sub': 'Geography',
      'icon': '>',
    },
    {
      'logo': "B",
      'sub': 'Biology',
      'icon': '>',
    },
    {
      'logo': "S",
      'sub': 'Sports',
      'icon': '>',
    },
  ];
  List subLogoColorList = const [
    Color.fromRGBO(200, 60, 0, 1),
    Color.fromRGBO(255, 157, 66, 1),
    Color.fromRGBO(3, 163, 134, 1),
    Color.fromRGBO(251, 43, 255, 1),
    Color.fromRGBO(45, 104, 255, 1)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 70),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi Vishal",
                        style: GoogleFonts.dmSans(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: const Color.fromARGB(131, 76, 52, 1),
                        ),
                      ),
                      Text(
                        "Great to see you again!",
                        style: GoogleFonts.dmSans(
                          color: const Color.fromRGBO(131, 76, 52, 1),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: 65,
                    width: 65,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(250, 188, 154, 1),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: subList.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (_) => const Math(),
                        ),
                      );
                    },
                    child: Container(
                      height: 80,
                      margin: const EdgeInsets.only(top: 25),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromRGBO(255, 237, 217, 1)),
                      child: Row(
                        children: [
                          Container(
                            height: 45,
                            width: 45,
                            margin: const EdgeInsets.only(right: 15),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                            ),
                            child: Text(
                              subList[index]['logo'],
                              style: GoogleFonts.dmSans(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: subLogoColorList[
                                    index % subLogoColorList.length],
                              ),
                            ),
                          ),
                          Text(
                            subList[index]['sub'],
                            style: GoogleFonts.dmSans(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromRGBO(131, 76, 52, 1),
                            ),
                          ),
                          const Spacer(),
                          const Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
