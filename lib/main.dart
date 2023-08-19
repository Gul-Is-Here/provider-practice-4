import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_mode_selection/theme_provider.dart';

import 'theme_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => ThemeProvider())],
      child: Builder(
        builder: (BuildContext context) {
          final themeChanger = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            themeMode: themeChanger.themeMode,
            darkTheme: ThemeData(brightness: Brightness.dark),
            theme: ThemeData(
                primaryColor: Colors.red, primarySwatch: Colors.amber),
            home: const ThemeScreen(),
          );
        },
      ),
    );
  }
}
