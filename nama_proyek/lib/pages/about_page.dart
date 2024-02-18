// about_page.dart
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Aplikasi'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('About Page'),
            SizedBox(height: 20),
            Text('Copyright by YudiaMohamad_21552011459'),
          ],
        ),
      ),
    );
  }
}
