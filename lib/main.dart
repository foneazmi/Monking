import 'package:flutter/material.dart';
import 'package:monking/ui/screens/screens.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      title: 'Flutter Demo',
      home: const DashboardScreen(),
    );
  }
}
