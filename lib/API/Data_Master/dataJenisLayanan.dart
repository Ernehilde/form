import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:form/View/Dashboard.dart';

class DataJenisLayanan {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> addProject({
    required String kode,
    required String nama,
    required BuildContext context,
  }) async {
    CollectionReference collRef = _firestore.collection('jenisLayanan');

    try {
      await collRef.add({
        'kodeLayanan': kode,
        'namaLayanan': nama,
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
