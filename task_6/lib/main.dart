import 'package:flutter/material.dart';
import 'package:task_6/usingcubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_6/cubits/cubit/cubic_cubit.dart';

//import 'dart:io' show Platform;

void main() {
  runApp(MyApp());
}




/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Radio Buttons Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => RadioCubit(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('Radio Buttons Demo'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: RadioButtons(),  // Use the RadioButtons widget
          ),
        ),
      ),
    );
  }
}*/

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => CubicCubit(),
        child: UsingCubit(),
      ),
    );
  }
}