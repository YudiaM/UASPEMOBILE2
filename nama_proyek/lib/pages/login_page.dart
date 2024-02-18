import 'package:flutter/material.dart';
import 'register_page.dart'; // Import halaman registrasi
import 'info_input_page.dart'; // Import halaman input informasi

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _login(context); // Ubah ke _login(context)
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

  void _login(BuildContext context) { // Tambahkan BuildContext context sebagai parameter
    // Lakukan logika untuk memeriksa kredensial dan login di sini
    // Contoh sederhana: hanya pindah ke halaman input informasi jika login berhasil
    String username = _usernameController.text;
    String password = _passwordController.text;

    // Logika sederhana: jika username dan password adalah "admin", pindahkan ke halaman input informasi
    if (username == "admin" && password == "admin") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => InfoInputPage()), // Pindah ke halaman input informasi
      );
    } else {
      // Jika kredensial tidak valid, tampilkan pesan kesalahan
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Login Failed'),
          content: Text('Invalid username or password.'),
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
}
