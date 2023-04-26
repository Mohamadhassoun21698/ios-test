import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseSearchScreen extends StatefulWidget {
  final String location;
  final String name;

  FirebaseSearchScreen(this.location, this.name);
  @override
  State<FirebaseSearchScreen> createState() =>
      _FirebaseSearchScreenState(location, name);
}

class _FirebaseSearchScreenState extends State<FirebaseSearchScreen> {
  final String location;
  final String name;
  _FirebaseSearchScreenState(this.location, this.name);

  AddData() async {
    CollectionReference userRef =
        FirebaseFirestore.instance.collection("ltalabet");
    userRef.add({
      "username": "$name",
      "age": location,
      "email": "thaer@gmail.com"
    }); //document de5l jadwal l users
  }

  @override
  void initState() {
    AddData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("hi"),
      ),
    );
  }
}


//flutter bottom count++?