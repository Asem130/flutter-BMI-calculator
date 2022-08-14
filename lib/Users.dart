import 'package:flutter/material.dart';
class UserModel
{

  final int id;
  final String name;
  final String phone;
  UserModel(@required this.id,@ required this.phone,@ required this.name);
}

class UsersScreen extends StatelessWidget {
    List<UserModel> users=[
      UserModel(1, '+1012131865', 'Asem'),
      UserModel(2, '+1012131865', 'Ahmed'),
      UserModel(3, '+1012131865', 'Ali'),
      UserModel(4, '+1012131865', 'omar'),
      UserModel(5, '+1012131865', 'ehab'),
      UserModel(6, '+1012131865', 'maez'),
      UserModel(7, '+1012131865', 'asem'),
    ];

    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users',
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => buildUserItem(users[index]),
          separatorBuilder: (context,index) => Padding(
                padding: const EdgeInsetsDirectional.only(start: 20),
                child: Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.grey,
                ),
              ),
          itemCount:users.length),
    );
  }

  Widget buildUserItem(UserModel users) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text(
                '${users.id}',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              radius: 25,
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${users.name}',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${users.phone}',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ],
            )
          ],
        ),
      );
}