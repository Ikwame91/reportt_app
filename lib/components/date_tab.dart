import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DayTab extends StatelessWidget {
  const DayTab({
    super.key,
    required this.selectedDay,
    required this.dayInfo,
  });

  final int selectedDay;
  final Map<String, dynamic> dayInfo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        color: selectedDay == dayInfo['day'] ? Colors.blue[800] : Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.blue[800]!,
        ),
      ),
      child: Column(
        children: [
          Text(
            '${dayInfo['day']}',
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: selectedDay == dayInfo['day']
                  ? Colors.white
                  : Colors.blue[800],
            ),
          ),
          const SizedBox(height: 4),
          Text(
            dayInfo['label'],
            style: GoogleFonts.poppins(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: selectedDay == dayInfo['day']
                  ? Colors.white
                  : Colors.blue[800],
            ),
          ),
        ],
      ),
    );
  }
}
