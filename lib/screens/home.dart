import 'package:flutter/material.dart';
import 'package:todo_app/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
      body: const Text('data'),
    );
  }

// Extracted "Method" into _buildAppBar

  AppBar _buildAppBar() {
    return AppBar(
        elevation: 0,
        backgroundColor: tdBGColor,
        title: Row(
          children: [
            const Icon(
              Icons.menu,
              color: tdBlack,
              size: 30,
            ),
            Container(
              height: 40,
              width: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/images/avatar.jpeg'),
              ),
            )
          ],
        ));
  }
}

// we used container -- which should be replaced with 
    // sizedBox
