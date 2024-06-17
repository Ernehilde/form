import 'package:flutter/material.dart';
import 'package:form/API/Data_Master/dataJenisLayanan.dart';
import 'package:google_fonts/google_fonts.dart';

class DataMasterA extends StatefulWidget {
  const DataMasterA({Key? key}) : super(key: key);

  @override
  State<DataMasterA> createState() => _DataMasterAState();
}

class _DataMasterAState extends State<DataMasterA> {
  TextEditingController kode = TextEditingController();
  TextEditingController nama = TextEditingController();

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
          'Input Data Jenis Layanan',
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
                "Kode Layanan",
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
                      hintText: "Kode Layanan",
                      border: InputBorder.none),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Nama Layanan",
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
                      hintText: "Nama Layanan",
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
                    style:
                        GoogleFonts.poppins(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void kosong() async {
    if (kode.text.isEmpty || nama.text.isEmpty) {
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
      DataJenisLayanan()
          .addProject(kode: kode.text, nama: nama.text, context: context);
    }
  }
}
