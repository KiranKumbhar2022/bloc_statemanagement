import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
      body: Center(
        child: Text(
          "Hello",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
        ),
      ),
    );
  }
}
