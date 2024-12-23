import 'package:flutter/material.dart';
import 'package:flutterstudy/Screen/Screen1/widgets/header.dart';
import 'package:flutterstudy/Screen/Screen1/widgets/home_app_bar.dart';
import 'package:flutterstudy/Screen/Screen1/widgets/progress.dart';
import 'package:flutterstudy/Screen/Screen1/widgets/search.dart';
import 'package:flutterstudy/Screen/Screen1/widgets/task_item.dart';
import '../Screen2/Screen2.dart';
import 'model/color_model.dart';
import 'model/task_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.hex020206,
      appBar: const HomeAppBar(),
      body: Stack(
        children: [
          // Nội dung chính
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Search(),
                const Header(title: 'Progress'),
                const Progress(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Header(title: "Today's Task"),
                      Column(
                        children: tasks.map((task) => TaskItem(task: task)).toList(),
                      ),
                      const SizedBox(height: 20),
                      const Header(title: "Tomorrow Task"),
                      Column(
                        children: task.map((task) => TaskItem(task: task)).toList(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Screen2()));
              },
              child: Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.purple.shade200,
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
