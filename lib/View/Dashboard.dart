import 'package:flutter/material.dart';
import 'package:form/View/Data%20Master/DataMaster.dart';
import 'package:form/View/Data%20Transaksi/DataTransaksi.dart';
import 'package:form/View/Laporan/ViewLaporan.dart';
import 'package:form/View/Login2.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'D A S H B O A R D',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark,
                color: Colors.white,
              ))
        ],
        centerTitle: true,
        titleSpacing: 4,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
          child: ListView(padding: EdgeInsets.zero, children: <Widget>[
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blueAccent,
          ),
          child: Center(
            child: Text(
              'TOUCH GRASS',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.house),
          title: const Text('Home'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.logout),
          title: const Text('Logout'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Login2()));
          },
        ),
      ])),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.blue[200],
              ),
              width: double.infinity,
              height: 200,
              child: Row(
                children: [Image.asset("alona.webp")],
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 30),
                child: Text(
                  "Menu",
                  style: GoogleFonts.poppins(fontSize: 20),
                )),
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
                            builder: (context) => const DataMaster()));
                  },
                  icon: const Icon(
                    Icons.business_center,
                    color: Colors.white,
                    size: 24,
                  ),
                  label: Text(
                    "Data Master",
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
                            builder: (context) => const DataTransaksi()));
                  },
                  icon: const Icon(
                    Icons.account_tree_sharp,
                    color: Colors.white,
                    size: 24,
                  ),
                  label: Text(
                    "Data Transaksi",
                    style:
                        GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                  )),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(6)),
              width: 420,
              height: 56,
              child: TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LaporanDashboard()));
                  },
                  icon: const Icon(
                    Icons.folder_open_sharp,
                    color: Colors.white,
                    size: 24,
                  ),
                  label: Text(
                    "Laporan",
                    style:
                        GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
