import 'package:expense_manager/menudrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

class MyPieChart extends StatefulWidget {
  const MyPieChart({super.key});
  @override
  State createState() => _MyPieChartState();
}

class _MyPieChartState extends State {
  Map<String, double> data = {
    "food": 650,
    "fuel": 600,
    "medicine": 1000,
    "Entertainment": 530,
    "shopping": 320
  };

  List recentTransaction = [
    {"category": "Food", "price": "₹650.00"},
    // {"category": "Fuel", "price": "₹600.00"},
    // {"category": "Medicine", "price": "₹1000.00"},
    // {"category": "Entertainment", "price": "₹530.00"},
    // {"category": "Shopping", "price": "₹320.00"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: Text(
          "Graphs",
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            PieChart(
              dataMap: data,
              chartType: ChartType.ring,
              ringStrokeWidth: 25,
              centerText: "Total \n₹ 3150",
              centerTextStyle: GoogleFonts.poppins(
                fontSize: 13,
                color: Colors.black,
              ),
              animationDuration: const Duration(milliseconds: 2000),
              chartValuesOptions: const ChartValuesOptions(
                showChartValuesInPercentage: false,
                showChartValues: false,
              ),
            ),
            const SizedBox(height: 50),
            Expanded(
              child: ListView.builder(
                itemCount: recentTransaction.length,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(15),
                        padding: const EdgeInsets.all(8),
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(214, 3, 3, 0.7),
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset('./assets/SVGimages/food.svg'),
                      ),
                      Text(
                        recentTransaction[index]["category"],
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        recentTransaction[index]["price"],
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Text(
                "Total                          ₹3150.00",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
