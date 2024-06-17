import 'package:flutter/material.dart';
import 'package:form/View/Laporan/Data_Master/LaporanA.dart';
import 'package:form/View/Laporan/Data_Master/LaporanDataKategori.dart';
import 'package:form/View/Laporan/Data_Master/LaporanDataPelanggan.dart';
import 'package:google_fonts/google_fonts.dart';

class DataMasterDashboard extends StatelessWidget {
  const DataMasterDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Laporan Data Master',
          style: GoogleFonts.poppins(
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                decoration: const BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LaporanA()));
                  },
                  child: Row(
                    children: [
                      const Icon(Icons.book, size: 26, color: Colors.white),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Laporan Data Jenis Layanan',
                        style: GoogleFonts.poppins(
                            fontSize: 18, color: Colors.white),
                      )
                    ],
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                decoration: const BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LaporanA()));
                  },
                  child: Row(
                    children: [
                      const Icon(Icons.work_outlined,
                          size: 26, color: Colors.white),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Laporan Data Kategori Layanan',
                        style: GoogleFonts.poppins(
                            fontSize: 18, color: Colors.white),
                      )
                    ],
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                decoration: const BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LaporanDataKategori()));
                  },
                  child: Row(
                    children: [
                      const Icon(Icons.person_4_sharp,
                          size: 26, color: Colors.white),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Laporan Data Pelanggan',
                        style: GoogleFonts.poppins(
                            fontSize: 18, color: Colors.white),
                      )
                    ],
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                decoration: const BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const LaporanDataPelanggan()));
                  },
                  child: Row(
                    children: [
                      const Icon(Icons.bar_chart_sharp,
                          size: 26, color: Colors.white),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Laporan Data Projek',
                        style: GoogleFonts.poppins(
                            fontSize: 18, color: Colors.white),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
