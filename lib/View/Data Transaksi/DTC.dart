import 'package:flutter/material.dart';
import 'package:form/View/Dashboard.dart';
import 'package:google_fonts/google_fonts.dart';

class DataTransaksiC extends StatefulWidget {
  const DataTransaksiC({super.key});

  @override
  State<DataTransaksiC> createState() => _DataTransaksiCState();
}

class _DataTransaksiCState extends State<DataTransaksiC> {
  TextEditingController kode = TextEditingController();
  TextEditingController kuitansi = TextEditingController();
  TextEditingController nama = TextEditingController();
  TextEditingController total = TextEditingController();
  TextEditingController pembayaran = TextEditingController();
  TextEditingController cara = TextEditingController();
  TextEditingController jumlah = TextEditingController();
  TextEditingController terbilang = TextEditingController();
  final TextEditingController _date = TextEditingController();

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
            'Input Data Kuitansi',
            style: GoogleFonts.poppins(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "No. Kuitansi",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextFormField(
                        controller: kuitansi,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            hintText: "No. Kuitansi",
                            border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Kode Transaksi",
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
                            hintText: "Kode Transaksi",
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
                      "Total Biaya",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextFormField(
                        controller: total,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            hintText: "Terbilang",
                            border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Untuk Pembayaran",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextFormField(
                        controller: pembayaran,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            hintText: "Ukuran",
                            border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Cara Bayar",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextFormField(
                        controller: cara,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            hintText: "Cash / Kredit",
                            border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Jumlah Bayar",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextFormField(
                        controller: jumlah,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            hintText: "Jumlah Bayar",
                            border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Terbilang",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextFormField(
                        controller: terbilang,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            hintText: "Jumlah Bayar",
                            border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Tanggal",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      width: double.infinity,
                      height: 50,
                      child: TextField(
                        controller: _date,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            hintText: 'Tanggal Pembayaran',
                            border: InputBorder.none),
                        onTap: () {
                          date();
                        },
                        readOnly: true,
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
            )
          ],
        ));
  }

  void kosong() {
    if (kode.text.isEmpty ||
        nama.text.isEmpty ||
        kuitansi.text.isEmpty ||
        total.text.isEmpty ||
        pembayaran.text.isEmpty ||
        cara.text.isEmpty ||
        jumlah.text.isEmpty ||
        terbilang.text.isEmpty ||
        _date.text.isEmpty) {
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
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Dashboard()));
    }
  }

  void date() async {
    DateTime? _picked = await showDatePicker(
        context: context,
        firstDate: DateTime(2018),
        lastDate: DateTime(2025),
        initialDate: DateTime.now());

    if (_picked != null) {
      setState(() {
        _date.text = _picked.toString().split(" ")[0];
      });
    }
  }
}
