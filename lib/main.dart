import 'dart:io';

import 'package:flutter/material.dart';
import 'package:monking/ui/screens/screens.dart';
import 'package:window_size/window_size.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('Monking');
    setWindowMinSize(const Size(320, 640));
  }
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
