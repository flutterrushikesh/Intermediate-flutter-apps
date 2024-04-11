import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Transaction extends StatefulWidget {
  const Transaction({super.key});
  @override
  State createState() => _TransactionState();
}

class _TransactionState extends State {
  List transactionList = [
    {
      "category": "Medicine",
      "description": "Lorem Ipsum is simply dummy text of the",
      "date": "3 June | 11:50 AM",
      "amount": "900",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
        ),
        title: Text(
          "June 2022",
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.all(10),
            child: const Icon(Icons.search),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.builder(
          itemCount: transactionList.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.only(right: 15),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(0, 174, 91, 0.7),
                          shape: BoxShape.circle,
                        ),
                        child:
                            SvgPicture.asset("./assets/SVGimages/medicine.svg"),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            transactionList[index]["category"],
                            style: GoogleFonts.poppins(fontSize: 15),
                          ),
                          Text(
                            transactionList[index]["description"],
                            style: GoogleFonts.poppins(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.remove_circle_rounded,
                        color: Color.fromRGBO(246, 113, 49, 1),
                      ),
                      Text(
                        transactionList[index]['amount'],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Spacer(),
                      Text(
                        transactionList[index]["date"],
                        style: GoogleFonts.poppins(fontSize: 10),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          bottomSheet();
        },
        elevation: 10,
        label: const Text('Add Taransaction'),
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
            borderRadius: BorderRadius.all(Radius.circular(70))),
        backgroundColor: Colors.white,
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
            top: 30,
            left: 20,
            right: 20,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Date",
                style: GoogleFonts.poppins(),
              ),
              const SizedBox(height: 5),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Date",
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
              const SizedBox(height: 10),
              Text(
                "Amount",
                style: GoogleFonts.poppins(),
              ),
              const SizedBox(height: 5),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Amount",
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
              const SizedBox(height: 10),
              Text(
                "Category",
                style: GoogleFonts.poppins(),
              ),
              const SizedBox(height: 5),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Category",
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
              const SizedBox(height: 10),
              Text(
                "Description",
                style: GoogleFonts.poppins(),
              ),
              const SizedBox(height: 5),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Description",
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
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      elevation: MaterialStatePropertyAll(2),
                      minimumSize: MaterialStatePropertyAll(
                        Size(123, 40),
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
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
