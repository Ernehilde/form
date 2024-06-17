import 'package:flutter/material.dart';
import 'package:form/View/Dashboard.dart';
import 'package:google_fonts/google_fonts.dart';

class DataTransaksiA extends StatefulWidget {
  const DataTransaksiA({super.key});

  @override
  State<DataTransaksiA> createState() => _DataTransaksiAState();
}

class _DataTransaksiAState extends State<DataTransaksiA> {
  TextEditingController kode = TextEditingController();
  TextEditingController nama = TextEditingController();
  TextEditingController telp = TextEditingController();
  final TextEditingController _date = TextEditingController();

  var _value;
  var _val2;
  var _val3;
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
            'Input Data Transaksi Pengujian',
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
                        controller: telp,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            hintText: "Nama Projek",
                            border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Nama Pengirim",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: DropdownButtonFormField(
                        value: _value,
                        hint: const Text('Nama Pengirim'),
                        items: const [
                          DropdownMenuItem(
                              value: ('Romeo'), child: Text("Romeo")),
                          DropdownMenuItem(
                              value: ('Juliet'), child: Text("Juliet")),
                          DropdownMenuItem(
                              value: ('Peter'), child: Text("Peter")),
                        ],
                        onChanged: (value) {
                          setState(() {});
                        },
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
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
                            hintText: 'Tanggal',
                            border: InputBorder.none),
                        onTap: () {
                          date();
                        },
                        readOnly: true,
                      ),
                    ),
                    const SizedBox(height: 40),
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
                      child: DropdownButtonFormField(
                        value: _val2,
                        hint: const Text('Nama Layanan'),
                        items: const [
                          DropdownMenuItem(
                              value: ('Uji Mutu Material'),
                              child: Text("Uji Mutu Material")),
                          DropdownMenuItem(
                              value: ('Uji Mutu Peralatan'),
                              child: Text("Uji Mutu Peralatan")),
                          DropdownMenuItem(
                              value: ('Uji Nyali'), child: Text("Uji Nyali")),
                        ],
                        onChanged: (value) {
                          setState(() {});
                        },
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Nama Kategori Layanan",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: DropdownButtonFormField(
                        value: _val3,
                        hint: const Text('Nama Kategori Layanan'),
                        items: const [
                          DropdownMenuItem(
                              value: ('Uji Silinder Beton < Fc 45'),
                              child: Text("Uji Silinder Beton < Fc 45")),
                          DropdownMenuItem(
                              value: ('Uji Silinder Beton < Fc 46'),
                              child: Text("Uji Silinder Beton < Fc 46")),
                          DropdownMenuItem(
                              value: ('Uji Silinder Beton < Fc 47'), 
                              child: Text("Uji Silinder Beton < Fc 47")),
                        ],
                        onChanged: (value) {
                          setState(() {});
                        },
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Ukuran",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            hintText: "Ukuran",
                            border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Jumlah",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            hintText: "Jumlah",
                            border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          decoration: BoxDecoration(
                              color: Colors.blue[900],
                              borderRadius: BorderRadius.circular(8)),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Tambah",
                              style: GoogleFonts.poppins(
                                  fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Catatan",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            hintText: "Catatan",
                            border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Nilai Kategori",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            hintText: "Nilai Kategori",
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
            )
          ],
        ));
  }

  void kosong() {
    if (kode.text.isEmpty || nama.text.isEmpty || telp.text.isEmpty) {
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
