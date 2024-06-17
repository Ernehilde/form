import 'package:flutter/material.dart';
import 'package:form/View/Dashboard.dart';
import 'package:google_fonts/google_fonts.dart';

class DataTransaksiB extends StatefulWidget {
  const DataTransaksiB({super.key});

  @override
  State<DataTransaksiB> createState() => _DataTransaksiBState();
}

class _DataTransaksiBState extends State<DataTransaksiB> {
  TextEditingController kode = TextEditingController();
  TextEditingController kodetrans = TextEditingController();
  TextEditingController jenisbenda = TextEditingController();
  TextEditingController kondisi = TextEditingController();
  TextEditingController material = TextEditingController();
  TextEditingController kodesample = TextEditingController();
  TextEditingController mutu = TextEditingController();
  TextEditingController umur = TextEditingController();
  TextEditingController luas = TextEditingController();
  TextEditingController berat = TextEditingController();
  TextEditingController beban = TextEditingController();
  TextEditingController tekanan = TextEditingController();
  TextEditingController pola = TextEditingController();
  TextEditingController ket = TextEditingController();

  final TextEditingController _receivedDateController = TextEditingController();
  final TextEditingController _date1Controller = TextEditingController();
  final TextEditingController _date2Controller = TextEditingController();

  var napel;
  var namaprojek;
  var tester;
  var verif;
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
            'Input Data Hasil Uji Kuat Tekan',
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
                      "Kode Hasil Uji",
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
                            hintText: "Kode Hasil Uji",
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
                        controller: kodetrans,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            hintText: "Kode Transaksi Layanan",
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
                      child: DropdownButtonFormField(
                        value: napel,
                        hint: const Text('Nama Pelanggan'),
                        items: const [
                          DropdownMenuItem(
                              value: ('Romeo'), child: Text("Romeo")),
                          DropdownMenuItem(
                              value: ('Juliet'), child: Text("Juliet")),
                          DropdownMenuItem(
                              value: ('Peter'), child: Text("Peter")),
                        ],
                        onChanged: (value) {
                          setState(() {
                            napel = value;
                          });
                        },
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
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
                      child: DropdownButtonFormField(
                        value: namaprojek,
                        hint: const Text('Nama Projek'),
                        items: const [
                          DropdownMenuItem(
                              value: ('Test1'), child: Text("Test1")),
                          DropdownMenuItem(
                              value: ('Test2'), child: Text("Test2")),
                          DropdownMenuItem(
                              value: ('Test3'), child: Text("Test3")),
                        ],
                        onChanged: (value) {
                          setState(() {
                            namaprojek = value;
                          });
                        },
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Jenis Benda Uji",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextFormField(
                        controller: jenisbenda,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            hintText: "Jenis Benda Uji",
                            border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Kondisi Benda Uji",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextFormField(
                        controller: kondisi,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            hintText: "Kondisi Benda Uji",
                            border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Material Caping",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextFormField(
                        controller: material,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            hintText: "Material Caping",
                            border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Diterima Tanggal",
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
                        controller: _receivedDateController,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            hintText: 'Diterima Tanggal',
                            border: InputBorder.none),
                        onTap: () {
                          date(_receivedDateController);
                        },
                        readOnly: true,
                      ),
                    ),
                    const SizedBox(height: 40),
                    Text(
                      "Tester",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: DropdownButtonFormField(
                        value: tester,
                        hint: const Text('Tester'),
                        items: const [
                          DropdownMenuItem(
                              value: ('Adul'), child: Text("Adul")),
                          DropdownMenuItem(
                              value: ('Asep'), child: Text('Asep')),
                          DropdownMenuItem(
                              value: ('Arip'), child: Text("Arip")),
                        ],
                        onChanged: (value) {
                          setState(() {
                            tester = value;
                          });
                        },
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Verifikator",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: DropdownButtonFormField(
                        value: verif,
                        hint: const Text('Verifikator'),
                        items: const [
                          DropdownMenuItem(
                              value: ('Budi'), child: Text("Budi")),
                          DropdownMenuItem(
                              value: ('Omega'), child: Text("Omega")),
                          DropdownMenuItem(
                              value: ('Alpha'), child: Text("Alpha")),
                        ],
                        onChanged: (value) {
                          setState(() {
                            verif = value;
                          });
                        },
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Kode Sample",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextFormField(
                        controller: kodesample,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            hintText: "Nama Layanan",
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
                        controller: _date1Controller,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            hintText: 'Cor (Cast)',
                            border: InputBorder.none),
                        onTap: () {
                          date(_date1Controller);
                        },
                        readOnly: true,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      width: double.infinity,
                      height: 50,
                      child: TextField(
                        controller: _date2Controller,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            hintText: "Uji (Test)",
                            border: InputBorder.none),
                        onTap: () {
                          date(_date2Controller);
                        },
                        readOnly: true,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Mutu",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextFormField(
                        controller: mutu,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            hintText: "Mutu Grade",
                            border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Umur (Age)",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextFormField(
                        controller: umur,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            hintText: "Umur (Grade)",
                            border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Luas Penampang",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextFormField(
                        controller: luas,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            hintText: "Luas Penampang",
                            border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Berat (Weight)",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextFormField(
                        controller: berat,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            hintText: "Berat (Weight)",
                            border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Beban (Load)",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextFormField(
                        controller: beban,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            hintText: "Beban (Load)",
                            border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Kuat Tekan",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextFormField(
                        controller: tekanan,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            hintText: "Kuat Tekan",
                            border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Pola Retak",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextFormField(
                        controller: pola,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            hintText: "Pola Retak",
                            border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Keterangan",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextFormField(
                        controller: ket,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            hintText: "Keterangan",
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
        jenisbenda.text.isEmpty ||
        kodetrans.text.isEmpty ||
        napel == null ||
        namaprojek == null ||
        kondisi.text.isEmpty ||
        material.text.isEmpty ||
        kodesample.text.isEmpty ||
        mutu.text.isEmpty ||
        umur.text.isEmpty ||
        luas.text.isEmpty ||
        berat.text.isEmpty ||
        beban.text.isEmpty ||
        tekanan.text.isEmpty ||
        pola.text.isEmpty ||
        ket.text.isEmpty ||
        tester == null ||
        verif == null ||
        _date1Controller.text.isEmpty ||
        _date2Controller.text.isEmpty ||
        _receivedDateController.text.isEmpty) {
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

  void date(TextEditingController controller) async {
    DateTime? _picked = await showDatePicker(
        context: context,
        firstDate: DateTime(2018),
        lastDate: DateTime(2025),
        initialDate: DateTime.now());

    if (_picked != null) {
      setState(() {
        controller.text = _picked.toString().split(" ")[0];
      });
    }
  }
}
