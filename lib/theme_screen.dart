import 'package:flutter/material.dart';
import 'package:theme_mode_selection/theme_provider.dart';
import 'package:provider/provider.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Changing'),
      ),
      body: Column(children: [
        RadioListTile<ThemeMode>(
            title: const Text('Light mode'),
            value: ThemeMode.light,
            groupValue: themeController.themeMode,
            onChanged: themeController.setTheme),
        RadioListTile<ThemeMode>(
            title: const Text('Dark mode'),
            value: ThemeMode.dark,
            groupValue: themeController.themeMode,
            onChanged: themeController.setTheme),
        RadioListTile<ThemeMode>(
            title: const Text('System mode'),
            value: ThemeMode.system,
            groupValue: themeController.themeMode,
            onChanged: themeController.setTheme)
      ]),
    );
  }
}
