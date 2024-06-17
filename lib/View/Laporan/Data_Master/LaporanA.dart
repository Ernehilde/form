import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_fonts/google_fonts.dart';

class LaporanA extends StatefulWidget {
  const LaporanA({super.key});

  @override
  State<LaporanA> createState() => _LaporanAState();
}

class _LaporanAState extends State<LaporanA> {
  List<Map<String, dynamic>> tableData = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? kodeLayananList = prefs.getStringList('kodeLayananList');
    List<String>? namaLayananList = prefs.getStringList('namaLayananList');

    if (kodeLayananList != null && namaLayananList != null) {
      setState(() {
        for (int i = 0; i < kodeLayananList.length; i++) {
          tableData.add({
            'no': (i + 1).toString(),
            'kodeLayanan': kodeLayananList[i],
            'namaLayanan': namaLayananList[i],
          });
        }
      });
    }
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
      body: SingleChildScrollView(
        child: DataTable(
          columns: const [
            DataColumn(label: Text('No.')),
            DataColumn(label: Text('Kode Layanan')),
            DataColumn(label: Text('Nama Layanan')),
            DataColumn(label: Text('')),
          ],
          rows: tableData
              .map(
                (data) => DataRow(cells: [
                  DataCell(Text(data['no'])),
                  DataCell(Text(data['kodeLayanan'])),
                  DataCell(Text(data['namaLayanan'])),
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
    );
  }

  void _hapusData(Map<String, dynamic> data) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? kodeLayananList = prefs.getStringList('kodeLayananList');
    List<String>? namaLayananList = prefs.getStringList('namaLayananList');

    if (kodeLayananList != null && namaLayananList != null) {
      setState(() {
        kodeLayananList.remove(data['kodeLayanan']);
        namaLayananList.remove(data['namaLayanan']);
        prefs.setStringList('kodeLayananList', kodeLayananList);
        prefs.setStringList('namaLayananList', namaLayananList);
        tableData.remove(data);

        for (int i = 0; i < tableData.length; i++) {
          tableData[i]['no'] = (i + 1).toString();
        }
      });
    }
  }
}
