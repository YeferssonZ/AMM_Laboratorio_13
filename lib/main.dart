import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/user_provider.dart';
import 'presentation/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserProvider(),
      child: MaterialApp(
        title: 'Provider Example',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          hintColor: Colors.orange, // Color de acento
          fontFamily: 'Roboto', // Fuente principal
          textTheme: TextTheme(
            headline6: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),
            subtitle1: TextStyle(fontSize: 16, color: Colors.black54),
          ),
        ),
        home: HomeScreen(),
      ),
    );
  }
}
