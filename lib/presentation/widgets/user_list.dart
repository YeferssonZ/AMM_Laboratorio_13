import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/user_provider.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);

    if (userProvider.users.isEmpty) {
      return Text('No hay usuarios CARGADOS');
    }

    return ListView.builder(
      shrinkWrap: true,
      itemCount: userProvider.users.length,
      itemBuilder: (context, index) {
        final user = userProvider.users[index];
        return ListTile(
          title: Text(user.name),
          subtitle: Text('Age: ${user.age}'),
        );
      },
    );
  }
}
