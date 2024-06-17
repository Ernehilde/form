import 'package:flutter/material.dart';
import 'package:form/View/Laporan/Data_Master/DataMasterLaporanView.dart';
import 'package:form/View/Laporan/Data_Transaksi/DataTransaksiDashboard.dart';
import 'package:google_fonts/google_fonts.dart';

class LaporanDashboard extends StatelessWidget {
  const LaporanDashboard({super.key});

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
          'Laporan',
          style: GoogleFonts.poppins(
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Center(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  borderRadius: BorderRadius.circular(6)),
              width: 420,
              height: 56,
              child: TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DataMasterDashboard()));
                  },
                  icon: const Icon(
                    Icons.business_center,
                    color: Colors.white,
                    size: 24,
                  ),
                  label: Text(
                    "Laporan Data Master",
                    style:
                        GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                  )),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(6)),
              width: 420,
              height: 56,
              child: TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const DataTransaksiDashboard()));
                  },
                  icon: const Icon(
                    Icons.account_tree_sharp,
                    color: Colors.white,
                    size: 24,
                  ),
                  label: Text(
                    "Laporan Data Transaksi",
                    style:
                        GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                  )),
            ),
          ],
        ),
      )),
    );
  }
}
