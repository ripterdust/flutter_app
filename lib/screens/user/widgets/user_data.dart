import 'package:flutter/material.dart';

class UserData extends StatelessWidget {
  const UserData({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 8,
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
            radius: 50,
          ),
          Expanded(
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Jhon Doe",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Text("19/02/2000, Femenine"),
                  Text('Guatemala, Guatemala'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
