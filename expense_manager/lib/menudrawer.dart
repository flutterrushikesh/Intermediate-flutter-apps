import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'category.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});
  @override
  State createState() => _MyDrawerState();
}

class _MyDrawerState extends State {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50, left: 25),
            child: Text(
              "Expense manager",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 25),
            child: Text(
              "Saves all your Transactions",
              style: GoogleFonts.poppins(
                fontSize: 10,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              const SizedBox(width: 25),
              SvgPicture.asset(
                './assets/SVGimages/transaction.svg',
              ),
              const SizedBox(width: 15),
              Text(
                "Transaction",
                style: GoogleFonts.poppins(fontSize: 16),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              const SizedBox(width: 25),
              SvgPicture.asset(
                './assets/SVGimages/pichart.svg',
              ),
              const SizedBox(width: 15),
              Text(
                "Graphs",
                style: GoogleFonts.poppins(fontSize: 16),
              ),
            ],
          ),
          const SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const MyCategory(),
                ),
              );
            },
            child: Row(
              children: [
                const SizedBox(width: 25),
                SvgPicture.asset(
                  './assets/SVGimages/category.svg',
                ),
                const SizedBox(width: 15),
                Text(
                  "Category",
                  style: GoogleFonts.poppins(fontSize: 16),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              const SizedBox(width: 25),
              SvgPicture.asset(
                './assets/SVGimages/trash.svg',
              ),
              const SizedBox(width: 15),
              Text(
                "Trash",
                style: GoogleFonts.poppins(fontSize: 16),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              const SizedBox(width: 25),
              SvgPicture.asset(
                './assets/SVGimages/person.svg',
              ),
              const SizedBox(width: 15),
              Text(
                "About us",
                style: GoogleFonts.poppins(fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
