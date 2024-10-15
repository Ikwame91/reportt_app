import 'package:flutter/material.dart';

class DateCard extends StatelessWidget {
  const DateCard({super.key, required this.date});
  final String date;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(date, style: TextStyle(fontSize: 16)),
            ),
          ),
        ],
      ),
    );
  }
}