import 'package:expense_manager/transaction_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State createState() => _LoginScreenState();
}

class _LoginScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(height: 50),
            SvgPicture.asset("./assets/SVGimages/rscard.svg"),
            const SizedBox(height: 50),
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login to your Account",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          10,
                        ),
                      ),
                      color: Color.fromRGBO(255, 255, 255, 1),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.15),
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ],
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "username",
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 12,
                          color: const Color.fromRGBO(0, 0, 0, 0.4),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          10,
                        ),
                      ),
                      color: Color.fromRGBO(255, 255, 255, 1),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.15),
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ],
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "password",
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 12,
                          color: const Color.fromRGBO(0, 0, 0, 0.4),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 35),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {});
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (_) => const Transaction(),
                        ),
                      );
                    },
                    style: const ButtonStyle(
                      minimumSize: MaterialStatePropertyAll(
                        Size(double.infinity, 50),
                      ),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                      ),
                      backgroundColor: MaterialStatePropertyAll(
                        Color.fromRGBO(14, 161, 125, 1),
                      ),
                    ),
                    child: Text(
                      "Sign in",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?  ",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {});
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const SignupScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "Sign up",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: const Color.fromRGBO(14, 161, 125, 1),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
