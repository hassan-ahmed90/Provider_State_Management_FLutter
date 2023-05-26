import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learning/Light_Dark_Mode/theme_provider.dart';
class ThemeScreen extends StatefulWidget {
  const ThemeScreen({Key? key}) : super(key: key);

  @override
  State<ThemeScreen> createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeChanger= Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Mode"),
        centerTitle: true,
      ),
      body: Column(
        children: [

          RadioListTile(
              title: Text("Light Mode"),
              value: ThemeMode.light,
              groupValue: themeChanger.themeMode ,
              onChanged: themeChanger.setTheme),
          RadioListTile(
              title: Text("Dark Mode"),
              value: ThemeMode.dark,
              groupValue: themeChanger.themeMode ,
              onChanged: themeChanger.setTheme),
          RadioListTile(
              title: Text("System Mode"),
              value: ThemeMode.system,
              groupValue: themeChanger.themeMode ,
              onChanged: themeChanger.setTheme),

        ],
      ),
    );
  }
}
