import'package:flutter/material.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: ProfileWidget(),
      ),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://i.pinimg.com/736x/09/24/a7/0924a7ef295741e916c8f42512bbe5bd.jpg'),

            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Icon(Icons.person),
            SizedBox(width: 10),
            Text(
              'Shawana zeb',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Icon(Icons.email),
            SizedBox(width: 10),
            Text(
              'shawanazeb@gmail.com',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Icon(Icons.phone),
            SizedBox(width: 10),
            Text(
              '+1234567890',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Add action here
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Background color
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Text color
          ),
          child: Text('Edit Profile'),
        ),
      ],
    );
  }
}
