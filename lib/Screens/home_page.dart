import 'package:dark_mode/Widgets/switch.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Dark mode')),
        backgroundColor: Colors.grey,
      ),
      body: const Padding(
        padding: EdgeInsets.all(12.0),
        child: Row(
          children: [
            Text(
              'Dark Mode',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 20,
            ),
            SwitchDarkMode(),
          ],
        ),
      ),
    );
  }
}
