import 'package:flutter/material.dart';
import 'package:form/API/Data_Master/dataPelanggan.dart';
import 'package:google_fonts/google_fonts.dart';

class DataMasterC extends StatefulWidget {
  const DataMasterC({super.key});

  @override
  State<DataMasterC> createState() => _DataMasterCState();
}

class _DataMasterCState extends State<DataMasterC> {
  TextEditingController kode = TextEditingController();
  TextEditingController nama = TextEditingController();
  TextEditingController npwp = TextEditingController();
  TextEditingController alamat = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Text(
            'Input Data Pelanggan',
            style: GoogleFonts.poppins(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Kode Pelanggan",
                  style: GoogleFonts.poppins(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8)),
                  child: TextFormField(
                    controller: kode,
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 8),
                        hintText: "Kode Pelanggan",
                        border: InputBorder.none),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Nama Pelanggan",
                  style: GoogleFonts.poppins(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8)),
                  child: TextFormField(
                    controller: nama,
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 8),
                        hintText: "Nama Pelanggan",
                        border: InputBorder.none),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "NPWP",
                  style: GoogleFonts.poppins(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8)),
                  child: TextFormField(
                    controller: npwp,
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 8),
                        hintText: "NPWM",
                        border: InputBorder.none),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Alamat",
                  style: GoogleFonts.poppins(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8)),
                  child: TextFormField(
                    controller: alamat,
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 8),
                        hintText: "Alamat",
                        border: InputBorder.none),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 460,
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(8)),
                  child: TextButton(
                    onPressed: () {
                      kosong();
                    },
                    child: Text(
                      "Simpan",
                      style: GoogleFonts.poppins(
                          fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  void kosong() {
    if (kode.text.isEmpty ||
        nama.text.isEmpty ||
        npwp.text.isEmpty ||
        alamat.text.isEmpty) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Error"),
            content: const Text("Isi Semua Field !"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("OK"),
              ),
            ],
          );
        },
      );
    } else {
      DataPelanggan().addProject(
          kode: kode.text,
          nama: nama.text,
          npwp: npwp.text,
          alamat: alamat.text,
          context: context);
    }
  }
}
