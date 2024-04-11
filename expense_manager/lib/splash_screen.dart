import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State createState() => _SplashScreenState();
}

class _SplashScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),
            const Spacer(),
            Container(
              width: 144,
              height: 144,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(234, 238, 235, 1),
              ),
              child: Center(
                child: SvgPicture.asset(
                  "./assets/SVGimages/rscard.svg",
                ),
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                setState(() {});
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (_) => const LoginScreen(),
                  ),
                );
              },
              child: Text(
                "Expense Manager",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
