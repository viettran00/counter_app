import 'package:couter_app/blocs/counter_bloc.dart';
import 'package:couter_app/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<CounterBloc>(
        create: (context) => CounterBloc(0),
        child: CounterPage(),
      ),
    );
  }
}
