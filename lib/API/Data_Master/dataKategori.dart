import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:form/View/Dashboard.dart';

class DataKategori {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> addProject({
    required String kode,
    required String nama,
    required String refrensi,
    required String ukuran,
    required String harga,
    required BuildContext context,
  }) async {
    CollectionReference collRef = _firestore.collection('kategoriLayanan');

    try {
      await collRef.add({
        'kodeLayanan': kode,
        'namaLayanan': nama,
        'refrensi': refrensi,
        'ukuran': ukuran,
        'harga': harga
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
