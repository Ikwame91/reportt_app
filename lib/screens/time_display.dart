import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animate_do/animate_do.dart';
import 'package:report_app/components/inro_widget.dart';

class TimeDisplayScreen extends StatefulWidget {
  const TimeDisplayScreen({super.key});

  @override
  State<TimeDisplayScreen> createState() => _TimeDisplayScreenState();
}

class _TimeDisplayScreenState extends State<TimeDisplayScreen> {
  String selectedMonth = "August";
  int selectedDay = 21;
  int selectedYear = 2024;
  String currentTime = "11:10";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.blue.shade50,
                Colors.blue.shade100,
              ],
            ),
          ),
          child: Stack(
            children: [
              // Background decorations
              Positioned(
                top: 0,
                left: -50,
                child: FadeIn(
                  duration: const Duration(milliseconds: 800),
                  child: Transform.rotate(
                    angle: -0.2,
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.1),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: -50,
                child: FadeIn(
                  duration: const Duration(milliseconds: 800),
                  child: Transform.rotate(
                    angle: -0.2,
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.1),
                      ),
                    ),
                  ),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 40),
                    FadeInDown(
                      duration: const Duration(milliseconds: 800),
                      child: Text(
                        'Wednesday, $selectedDay $selectedMonth',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    FadeInDown(
                      delay: const Duration(milliseconds: 200),
                      duration: const Duration(milliseconds: 800),
                      child: Text(
                        currentTime,
                        style: GoogleFonts.poppins(
                          fontSize: 64,
                          fontWeight: FontWeight.w700,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    const Spacer(),
                    FadeInUp(
                      duration: const Duration(milliseconds: 800),
                      child: IntroWidget(
                        onTap: () {
                          Navigator.of(context).pushReplacementNamed('/home');
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}