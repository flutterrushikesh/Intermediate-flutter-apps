import 'package:expense_manager/menudrawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTrash extends StatefulWidget {
  const MyTrash({super.key});
  @override
  State createState() => _MyTrashState();
}

class _MyTrashState extends State {
  List trashList = [
    {
      "category": "Food",
      "description":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry... more",
      'date': '3 June | 11:50 AM',
      'amount': "₹500.00"
    },
    {
      "category": "Food",
      "description":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry... more",
      'date': '3 June | 11:50 AM',
      'amount': "₹650.00"
    },
    {
      "category": "Food",
      "description":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry... more",
      'date': '3 June | 11:50 AM',
      'amount': "₹500.00"
    },
    {
      "category": "Food",
      "description":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry... more",
      'date': '3 June | 11:50 AM',
      'amount': "₹650.00"
    },
    {
      "category": "Food",
      "description":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry... more",
      'date': '3 June | 11:50 AM',
      'amount': "₹500.00"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: Text(
          "Trash",
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: trashList.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.remove_circle,
                          size: 30,
                          color: Color.fromRGBO(204, 210, 227, 1),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  trashList[index]["category"],
                                  style: GoogleFonts.poppins(fontSize: 15),
                                  // textAlign: TextAlign.start,
                                ),
                                const Spacer(),
                                Text(
                                  trashList[index]["amount"],
                                  style: GoogleFonts.poppins(
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 4),
                            Text(
                              trashList[index]["description"],
                              style: GoogleFonts.poppins(
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 2),
                    ],
                  ),
                  Row(
                    children: [
                      const Spacer(),
                      Text(
                        trashList[index]['date'],
                        style: GoogleFonts.poppins(
                            fontSize: 10,
                            color: const Color.fromRGBO(0, 0, 0, 0.6)),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
