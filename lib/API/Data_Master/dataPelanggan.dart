import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:form/View/Dashboard.dart';

class DataPelanggan {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> addProject({
    required String kode,
    required String nama,
    required String npwp,
    required String alamat,
    required BuildContext context,
  }) async {
    CollectionReference collRef = _firestore.collection('dataPelanggan');

    try {
      await collRef.add({
        'kodePelanggan': kode,
        'namaPelanggan': nama,
        'npwp': npwp,
        'alamat': alamat,
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
