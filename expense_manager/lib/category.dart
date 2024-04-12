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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        margin: const EdgeInsets.all(30),
        child: FloatingActionButton.extended(
          onPressed: () {
            bottomSheet();
          },
          elevation: 10,
          label: const Text('Add Category'),
          icon: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(14, 161, 125, 1),
            ),
            child: const Icon(
              Icons.add_rounded,
              size: 35,
              weight: 100,
              color: Colors.white,
            ),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(70),
            ),
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }

  void bottomSheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
              bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 174, 171, 171),
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Add",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                children: [
                  Text(
                    "Image URL",
                    style: GoogleFonts.poppins(),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter URL",
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 12,
                    color: const Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 7, 53, 90)),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "Category",
                    style: GoogleFonts.poppins(),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter catagory name",
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 12,
                    color: const Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 7, 53, 90)),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
              ),
              // const SizedBox(
              //   height: 50,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(40),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        elevation: MaterialStatePropertyAll(2),
                        minimumSize: MaterialStatePropertyAll(
                          Size(123, 50),
                        ),
                        backgroundColor: MaterialStatePropertyAll(
                          Color.fromRGBO(14, 161, 125, 1),
                        ),
                        shadowColor: MaterialStatePropertyAll(Colors.black),
                      ),
                      child: Text(
                        "Add",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // const SizedBox(height: 40),
            ],
          ),
        );
      },
    );
  }
}
