import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:report_app/components/date_tab.dart';
import 'package:report_app/components/report_tile.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  int selectedDay = 5; 
  String selectedMonth = "August"; 
  int selectedYear = 2024;


  List<Map<String, dynamic>> days = [
    {"day": 5, "label": "Mon"},
    {"day": 6, "label": "Tue"},
    {"day": 7, "label": "Wed"},
    {"day": 8, "label": "Thu"},
    {"day": 9, "label": "Fri"}
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.search, color: Colors.blue),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                '$selectedMonth $selectedDay, $selectedYear',
                style: GoogleFonts.poppins(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: Colors.blue),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: days.map((dayInfo) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedDay = dayInfo['day'];
                      });
                    },
                    child: DayTab(
                      selectedDay: selectedDay,
                      dayInfo: dayInfo,
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      disabledBackgroundColor: Colors.blue[800],
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                    ),
                    child: Text(
                      "Filter By Date",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Icon(Icons.more_horiz, color: Colors.black),
                ],
              ),
              Expanded(
                child: ListView(
                  children: const [
                    ReportTile(
                        title: "Profit Position", subtitle: "Head Office"),
                    ReportTile(
                        title: "Branch Specy Movement",
                        subtitle: "Eastern Branch"),
                    ReportTile(
                        title: "Profit Position", subtitle: "Southern Branch"),
                    ReportTile(
                        title: "Profit Position", subtitle: "Northern Branch"),
                    ReportTile(
                        title: "Foreign Currency Allocation",
                        subtitle: "Consolidated"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
