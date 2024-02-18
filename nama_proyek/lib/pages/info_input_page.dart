// info_input_page.dart
import 'package:flutter/material.dart';

// Import halaman register
import 'register_page.dart';

// Import halaman login
import 'login_page.dart';

class InfoInputPage extends StatefulWidget {
  @override
  _InfoInputPageState createState() => _InfoInputPageState();
}

class _InfoInputPageState extends State<InfoInputPage> {
  TextEditingController _infoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Data Informasi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _infoController,
              decoration: InputDecoration(
                labelText: 'Informasi',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _saveInfo();
              },
              child: Text('Simpan Informasi'),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()), // Pindah ke halaman login
                );
              },
              child: Text('Login'),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()), // Pindah ke halaman registrasi
                );
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }

  void _saveInfo() {
    String info = _infoController.text;

    // Lakukan logika untuk menyimpan informasi
    // Contoh sederhana: hanya tampilkan informasi yang disimpan
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Informasi Disimpan'),
        content: Text('Informasi yang disimpan: $info'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Tutup dialog
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
  }
}
