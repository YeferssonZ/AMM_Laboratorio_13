import '../models/user.dart';

class UserRepository {
  List<User> getUsers() {
    return [
      User(id: '1', name: 'Usuario 01', age: 21),
      User(id: '2', name: 'Usuario 02', age: 19),
    ];
  }
}

//ejemplo de usuarios litados