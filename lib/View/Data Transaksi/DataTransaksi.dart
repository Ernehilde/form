import 'package:flutter/material.dart';
import 'package:form/View/Data%20Transaksi/DTA.dart';
import 'package:form/View/Data%20Transaksi/DTB.dart';
import 'package:form/View/Data%20Transaksi/DTC.dart';
import 'package:form/View/Data%20Transaksi/DTD.dart';
import 'package:google_fonts/google_fonts.dart';

class DataTransaksi extends StatelessWidget {
  const DataTransaksi({super.key});

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
          'Data Transaksi',
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
              //NIH DIAAA DATA TRANSAKSI
              height: 20,
            ),
            Container(
                //MULAI SINI A
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
                            builder: (context) => const DataTransaksiA()));
                  },
                  child: Row(
                    children: [
                      const Icon(Icons.book, size: 26, color: Colors.white),
                      const SizedBox(
                        //NIH DIA DATA TRANSAKSI A
                        width: 10,
                      ),
                      Text(
                        'Input Data Transaksi Pengujian',
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
                //MULAI SINI B
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
                            builder: (context) => const DataTransaksiB()));
                  },
                  child: Row(
                    children: [
                      const Icon(Icons.work_outlined,
                          size: 26, color: Colors.white),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Input Hasil Pengujian',
                        style: GoogleFonts.poppins(
                            fontSize: 18, color: Colors.white),
                      )
                    ],
                  ),
                )),
            const SizedBox(
              //NIH DIA DATA TRANSAKSI B
              height: 20,
            ),
            Container(
                //MULAI SINI C
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
                            builder: (context) => const DataTransaksiC()));
                  },
                  child: Row(
                    children: [
                      const Icon(Icons.person_4_sharp,
                          size: 26, color: Colors.white),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Input Data Kuitansi',
                        style: GoogleFonts.poppins(
                            fontSize: 18, color: Colors.white),
                      )
                    ],
                  ),
                )),
            const SizedBox(
              //NIH DIA DATA TRANSAKSI C
              height: 20,
            ),
            Container(
                //MULAI SINI D
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
                            builder: (context) => const DataTransaksiD()));
                  },
                  child: Row(
                    children: [
                      const Icon(Icons.bar_chart_sharp,
                          size: 26, color: Colors.white),
                      const SizedBox(
                        //NIH DIA DATA TRANSAKSI D
                        width: 10,
                      ),
                      Text(
                        'Input Data Terima Hasil Test',
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
