import 'package:flutter/material.dart';
import '../data/models/user.dart';
import '../data/repositories/user_repository.dart';

class UserProvider with ChangeNotifier {
  final UserRepository _userRepository = UserRepository();
  List<User> _users = [];

  List<User> get users => _users;

  void loadUsers() {
    _users = _userRepository.getUsers();
    notifyListeners();
  }

  void addUser(String name, int age) {
    final newUser = User(id: _users.length.toString(), name: name, age: age);
    _users.add(newUser);
    notifyListeners();
  }
}
