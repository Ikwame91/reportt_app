import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
    int selectedTabIndex = 0;
  final List<String> tabs =[
    "Mon",
    "Tue",
    "Wed",
    "Thu",
    "Fri",

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
        child: Column(
          children: [
            SizedBox(height: 20),
           SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(tabs.length, (index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedTabIndex = index;
                            });
                          },
                          child:
                              _buildTab(tabs[index], index == selectedTabIndex),
                        );
                      }),
                    ),
                  ),
            SizedBox(height: 20),
            _buildFilterSection(),
            Expanded(
              child: ListView(
                children: [
                  _buildCard("Profit Position", "Head Office"),
                  _buildCard("Branch Specy Movement", "Eastern Branch"),
                  _buildCard("Profit Position", "Southern Branch"),
                  _buildCard("Foreign Currency Allocation", "Consolidated"),
                  _buildCard("Profit Position", "Western Branch"),
                  _buildCard("Profit Position", "Western Branch"),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }

  Widget _buildDateSelection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildDateCard("5 Mon"),
          _buildDateCard("6 Tue"),
          _buildDateCard("7 Wed"),
          _buildDateCard("8 Thu"),
          _buildDateCard("9 Fri"),
        ],
      ),
    );
  }
 Widget _buildTab(String label, bool isSelected) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.blue, width: 2),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
  Widget _buildDateCard(String date) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(date, style: TextStyle(fontSize: 16)),
      ),
    );
  }

  Widget _buildFilterSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Filter by Date",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Icon(Icons.more_vert),
        ],
      ),
    );
  }

  Widget _buildCard(String title, String subtitle) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blue[50],
          child: Icon(Icons.file_copy, color: Colors.blue),
        ),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: IconButton(
          icon: Icon(Icons.download),
          onPressed: () {
            // Implement download functionality
          },
        ),
      ),
    );
  }
}
