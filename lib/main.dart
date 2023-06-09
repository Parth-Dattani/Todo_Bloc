import 'package:demo_sqlite/bloc/database_bloc.dart';
import 'package:demo_sqlite/screen/home.dart';
import 'package:demo_sqlite/util/theam/app_theam.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo App',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: BlocProvider(
        create: (_) => DatabaseBloc(),
        child: Home(),
      ),
    );
  }
}
