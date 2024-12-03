import 'package:flutter/material.dart';
import 'package:flutterstudy/Screen/Screen1/model/color_model.dart';

class WidgetTimes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.arrow_back_ios_new, color: Colors.white),
              Text(
                '04 Mar - 11 Mar',
                style: TextStyle(color: AppColors.hexBA83DE, fontSize: 20),
              ),
              Icon(Icons.arrow_forward_ios, color: Colors.white),
            ],
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildDayColumn('Mon', '04', false),
              _buildDayColumn('Tue', '05', false),
              _buildDayColumn('Wed', '06', false),
              _buildDayColumn('Thu', '07', true),
              _buildDayColumn('Fri', '08', false),
              _buildDayColumn('Sat', '09', false),
              _buildDayColumn('Sun', '10', false),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDayColumn(String day, String date, bool isSelected) {
    return Column(
      children: [
        Text(
          day,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        SizedBox(height: 8.0),
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
          ),
          child: Text(
            date,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}

