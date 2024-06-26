// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:social_media_app/data/user_data.dart';
import 'package:social_media_app/widgets/user_card.dart';

class ShowUsersScreen extends StatefulWidget {
  const ShowUsersScreen({super.key});

  @override
  State<ShowUsersScreen> createState() => _ShowUsersScreenState();
}

class _ShowUsersScreenState extends State<ShowUsersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "All Users",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              return UserCard(
                  firstName: users[index]['first_name'],
                  lastName: users[index]['last_name'],
                  email: users[index]['email'],
                  gender: users[index]['gender'],
                  profilePictureUrl: users[index]['profile_pic']);
            }));
  }
}
