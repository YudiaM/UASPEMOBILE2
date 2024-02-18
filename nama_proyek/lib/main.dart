// main.dart
import 'package:flutter/material.dart';
import 'package:nama_proyek/pages/login_page.dart';
import 'package:nama_proyek/pages/register_page.dart';
import 'package:nama_proyek/pages/info_input_page.dart';
import 'package:nama_proyek/pages/info_list_page.dart';
import 'package:nama_proyek/pages/info_detail_page.dart';
import 'package:nama_proyek/pages/about_page.dart';
import 'package:nama_proyek/widgets/sidebar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nama Proyek',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/info_input': (context) => InfoInputPage(),
        '/info_list': (context) => InfoListPage(),
        '/info_detail': (context) => InfoDetailPage(),
        '/about': (context) => AboutPage(),
      },
    );
  }
}
