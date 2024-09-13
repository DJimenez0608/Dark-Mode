import 'package:dark_mode/AppTheme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SwitchDarkMode extends StatefulWidget {
  const SwitchDarkMode({super.key});

  @override
  State<SwitchDarkMode> createState() => _SwitchDarkModeState();
}

class _SwitchDarkModeState extends State<SwitchDarkMode> {
  bool intiValue = false;
  @override
  Widget build(BuildContext context) {
    //HERE WE CAN SEE THE SWITCH BOTTOM CONFIGURATION. IT IS A STFULL CAUSE IT NEEDS TO CHANGE WHEN THE  BUTTOM IS PRESSED
    return Switch(
      activeColor: Colors.red,
      value: intiValue,
      onChanged: (bool value) {
        setState(() {
          Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
          intiValue = value;
        });
      },
    );
  }
}
