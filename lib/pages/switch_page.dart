import 'package:flutter/material.dart';

class SwitchPage extends StatelessWidget {
  const SwitchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Switch(value: true, onChanged: (val) {}),
          SizedBox(height: 20),
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.red),
          ),
          SizedBox(height: 20),
          // Slider(value: 4, onChanged: (val) {}),
        ],
      ),
    );
  }
}
