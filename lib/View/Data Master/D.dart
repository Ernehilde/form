import 'package:flutter/material.dart';
import 'package:form/API/Data_Master/dataProjek.dart';
import 'package:google_fonts/google_fonts.dart';

class DataMasterD extends StatefulWidget {
  const DataMasterD({super.key});

  @override
  State<DataMasterD> createState() => _DataMasterDState();
}

class _DataMasterDState extends State<DataMasterD> {
  TextEditingController kode = TextEditingController();
  TextEditingController nama = TextEditingController();
  TextEditingController telp = TextEditingController();
  TextEditingController email = TextEditingController();
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
            'Input Data Projek',
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
                  "Kode Projek",
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
                        hintText: "Kode Projek",
                        border: InputBorder.none),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Nama Projek",
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
                        hintText: "Nama Projek",
                        border: InputBorder.none),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Telp/Fax",
                  style: GoogleFonts.poppins(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8)),
                  child: TextFormField(
                    controller: telp,
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 8),
                        hintText: "Telp/Fax",
                        border: InputBorder.none),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Email",
                  style: GoogleFonts.poppins(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8)),
                  child: TextFormField(
                    controller: email,
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 8),
                        hintText: "Email",
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
        telp.text.isEmpty ||
        email.text.isEmpty) {
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
      DataProjek().addProject(
          kodeProjek: kode.text,
          namaProjek: nama.text,
          telp: telp.text,
          email: email.text,
          context: context);
    }
  }
}
