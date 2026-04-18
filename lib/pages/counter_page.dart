import 'package:bloc_statemanagement/bloc/counterBloc/counter_bloc.dart';
import 'package:bloc_statemanagement/bloc/counterBloc/counter_event.dart';
import 'package:bloc_statemanagement/bloc/counterBloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    final counter = context.read<CounterBloc>();
    return BlocBuilder<CounterBloc, CounterState>(
      builder: (context, state) {
        return Scaffold(
          floatingActionButton: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FloatingActionButton(
                onPressed: () {
                  counter.add(IncreamentEvent());
                },
                child: Icon(Icons.add),
              ),
              SizedBox(height: 20),
              FloatingActionButton(
                onPressed: () {
                  counter.add(DecreamentEvent());
                },
                child: Icon(Icons.minimize_outlined),
              ),
            ],
          ),
          body: Center(
            child: Text(
              state.counter.toString(),
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
            ),
          ),
        );
      },
    );
  }
}
