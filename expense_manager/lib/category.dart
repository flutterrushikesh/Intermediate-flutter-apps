import 'package:expense_manager/menudrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCategory extends StatefulWidget {
  const MyCategory({super.key});
  @override
  State createState() => _MyCategoryState();
}

class _MyCategoryState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: Text(
          "Category",
          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 25,
          crossAxisSpacing: 25,
        ),
        padding: const EdgeInsets.all(15),
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.15),
                  blurRadius: 8,
                  offset: Offset(1, 2),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    height: 80,
                    width: 80,
                    padding: const EdgeInsets.all(20),
                    // margin: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(214, 3, 3, 0.7),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset('./assets/SVGimages/food.svg')),
                Text(
                  "Food",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.15),
                  blurRadius: 8,
                  offset: Offset(1, 2),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 80,
                  width: 80,
                  padding: const EdgeInsets.all(20),
                  // margin: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(0, 148, 255, 0.7),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset('./assets/SVGimages/fuel.svg'),
                ),
                Text(
                  "Fuel",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.15),
                  blurRadius: 8,
                  offset: Offset(1, 2),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 80,
                  width: 80,
                  padding: const EdgeInsets.all(20),
                  // margin: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(0, 174, 91, 0.7),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset('./assets/SVGimages/medicine.svg'),
                ),
                Text(
                  "Medicine",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.15),
                  blurRadius: 8,
                  offset: Offset(1, 2),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    height: 80,
                    width: 80,
                    padding: const EdgeInsets.all(20),
                    // margin: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(241, 38, 197, 0.7),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset('./assets/SVGimages/shopping.svg')),
                Text(
                  "Shopping",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
