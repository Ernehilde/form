import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:form/View/Dashboard.dart';

class DataProjek {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> addProject({
    required String kodeProjek,
    required String namaProjek,
    required String telp,
    required String email,
    required BuildContext context,
  }) async {
    CollectionReference collRef = _firestore.collection('dataProjek');

    try {
      await collRef.add({
        'kodeProjek': kodeProjek,
        'namaProjek': namaProjek,
        'telp': telp,
        'email': email,
      });

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Dashboard()),
      );
    } catch (e) {
      print(e);
    }
  }
}
