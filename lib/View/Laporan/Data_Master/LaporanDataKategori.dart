import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';

class LaporanDataKategori extends StatefulWidget {
  const LaporanDataKategori({super.key});

  @override
  State<LaporanDataKategori> createState() => _LaporanDataKategoriState();
}

class _LaporanDataKategoriState extends State<LaporanDataKategori> {
  final CollectionReference layananCollection =
      FirebaseFirestore.instance.collection('kategoriLayanan');
  List<Map<String, dynamic>> tableData = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    QuerySnapshot snapshot = await layananCollection.get();
    List<QueryDocumentSnapshot> documents = snapshot.docs;

    setState(() {
      tableData = documents.map((doc) {
        return {
          'id': doc.id,
          'no': (documents.indexOf(doc) + 1).toString(),
          'kodeLayanan': doc['kodeLayanan'],
          'namaLayanan': doc['namaLayanan'],
          'refrensi': doc['refrensi'],
          'ukuran': doc['ukuran'],
          'harga': doc['harga'],
        };
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Laporan Data Jenis Layanan',
          style: GoogleFonts.poppins(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ConstrainedBox(
              constraints: BoxConstraints(minWidth: constraints.maxWidth),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: DataTable(
                  columns: const [
                    DataColumn(label: Text('No.')),
                    DataColumn(label: Text('Kode Layanan')),
                    DataColumn(label: Text('Nama Layanan')),
                    DataColumn(label: Text('Refrensi')),
                    DataColumn(label: Text('Ukuran')),
                    DataColumn(label: Text('Harga')),
                    DataColumn(label: Text('Action')),
                  ],
                  rows: tableData
                      .map(
                        (data) => DataRow(cells: [
                          DataCell(Text(data['no'])),
                          DataCell(Text(data['kodeLayanan'])),
                          DataCell(Text(data['namaLayanan'])),
                          DataCell(Text(data['refrensi'])),
                          DataCell(Text(data['ukuran'])),
                          DataCell(Text(data['harga'])),
                          DataCell(IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () {
                              _hapusData(data);
                            },
                          )),
                        ]),
                      )
                      .toList(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _hapusData(Map<String, dynamic> data) async {
    await layananCollection.doc(data['id']).delete();
    setState(() {
      tableData.remove(data);
      for (int i = 0; i < tableData.length; i++) {
        tableData[i]['no'] = (i + 1).toString();
      }
    });
  }
}
