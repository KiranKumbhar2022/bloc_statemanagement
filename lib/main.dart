import 'package:bloc_statemanagement/bloc/CounterBloc/counter_bloc.dart';
import 'package:bloc_statemanagement/go_router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context) => CounterBloc(),
      child: MaterialApp.router(
      
        routerConfig: router,
        title: 'Bloc Statemanagement',
        theme: ThemeData(
          colorScheme: .fromSeed(seedColor: Colors.deepPurple),
        ),
      ),
    );
  }
}
