// auth_bloc.dart
import 'dart:async';

class AuthBloc {
  final _isLoggedInController = StreamController<bool>();
  Stream<bool> get isLoggedIn => _isLoggedInController.stream;

  void login(String username, String password) {
    // Implement login logic here
    _isLoggedInController.sink.add(true); // Example: Logged in successfully
  }

  void register(String username, String password) {
    // Implement register logic here
  }

  void dispose() {
    _isLoggedInController.close();
  }
}
