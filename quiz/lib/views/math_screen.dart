import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Math extends StatefulWidget {
  const Math({super.key});
  @override
  State createState() => _MathState();
}

class _MathState extends State {
  List mathQuestions = [
    {
      'question':
          'If David’s age is 27 years old in 2011. What was his age in 2003?',
      'option': [
        '19 years',
        '37 years',
        '20 years',
        '17 years',
      ],
      'answerIndex': 1,
    },
  ];

  int questionIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 80, left: 20, right: 20, bottom: 20),
        child: Column(
          children: [
            Text(
              "Math Quiz",
              style: GoogleFonts.dmSans(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: const Color.fromRGBO(131, 76, 52, 1),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            LinearPercentIndicator(
              lineHeight: 10,
              percent: 0.2,
              barRadius: const Radius.circular(6),
              progressColor: const Color.fromRGBO(42, 135, 63, 1),
              backgroundColor: const Color.fromRGBO(245, 216, 186, 1),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 8,
                ),
                Text(
                  '${questionIndex + 1}/${mathQuestions.length}',
                  style: GoogleFonts.dmSans(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              mathQuestions[questionIndex]['question'],
              style: GoogleFonts.dmSans(
                fontSize: 26,
                fontWeight: FontWeight.w700,
                color: const Color.fromRGBO(131, 76, 52, 1),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "${mathQuestions[questionIndex].option[0]}",
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "${mathQuestions[questionIndex].option[1]}",
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "${mathQuestions[questionIndex].option[2]}",
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "${mathQuestions[questionIndex].option[3]}",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
