import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:quiz/models/math_question_model.dart';
import 'package:quiz/views/result_screen.dart';

class Math extends StatefulWidget {
  const Math({super.key});
  @override
  State createState() => _MathState();
}

class _MathState extends State {
  List<MathQuestionsModel> mathQuestions = [
    const MathQuestionsModel(
      question:
          "If David's age is 27 years old in 2011. What was his age in 2003?",
      option: ["19 years", "37 years", "20 years", "17 years"],
      answerIndex: 1,
    ),
    const MathQuestionsModel(
      question:
          "If David's age is 27 years old in 2011. What was his age in 2003?",
      option: ["19 years", "37 years", "20 years", "17 years"],
      answerIndex: 1,
    ),
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
              mathQuestions[questionIndex].question!,
              style: GoogleFonts.dmSans(
                fontSize: 26,
                fontWeight: FontWeight.w700,
                color: const Color.fromRGBO(131, 76, 52, 1),
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: const MaterialStatePropertyAll(
                  Color.fromRGBO(26, 181, 134, 1),
                ),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                minimumSize: const MaterialStatePropertyAll(
                  Size(
                    double.infinity,
                    70,
                  ),
                ),
                alignment: Alignment.centerLeft,
              ),
              child: Text(
                "${mathQuestions[questionIndex].option?[0]}",
                style: GoogleFonts.dmSans(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: const MaterialStatePropertyAll(
                  Color.fromRGBO(248, 145, 87, 1),
                ),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                minimumSize: const MaterialStatePropertyAll(
                  Size(
                    double.infinity,
                    70,
                  ),
                ),
                alignment: Alignment.centerLeft,
              ),
              child: Text(
                "${mathQuestions[questionIndex].option?[1]}",
                style: GoogleFonts.dmSans(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: const MaterialStatePropertyAll(
                  Color.fromRGBO(248, 145, 87, 1),
                ),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                minimumSize: const MaterialStatePropertyAll(
                  Size(
                    double.infinity,
                    70,
                  ),
                ),
                alignment: Alignment.centerLeft,
              ),
              child: Text(
                "${mathQuestions[questionIndex].option?[2]}",
                style: GoogleFonts.dmSans(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: const MaterialStatePropertyAll(
                  Color.fromRGBO(248, 145, 87, 1),
                ),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                minimumSize: const MaterialStatePropertyAll(
                  Size(
                    double.infinity,
                    70,
                  ),
                ),
                alignment: Alignment.centerLeft,
              ),
              child: Text(
                "${mathQuestions[questionIndex].option?[3]}",
                style: GoogleFonts.dmSans(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Explanation",
                          style: GoogleFonts.dmSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(131, 76, 52, 1),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          textAlign: TextAlign.justify,
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing ",
                          style: GoogleFonts.dmSans(
                            color: const Color.fromRGBO(131, 76, 52, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => const ResultScreen(),
            ),
          );
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        isExtended: true,
        backgroundColor: const Color.fromRGBO(26, 181, 134, 1),
        label: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "NEXT",
              style: GoogleFonts.dmSans(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 20,
              width: 20,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_forward,
                size: 17,
                color: Color.fromRGBO(26, 181, 134, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
