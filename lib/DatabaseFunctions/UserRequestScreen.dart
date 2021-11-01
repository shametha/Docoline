import 'package:docoline/DatabaseFunctions/FirestoreUpdator.dart';
import 'package:docoline/screens/UserProfile.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserRequestScreen extends StatelessWidget {
  const UserRequestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => UserProfileScreen()));
            },
            child: Text("You will be notified soon")),
      ),
    );
  }
}
