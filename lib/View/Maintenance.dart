import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Maintenance extends StatefulWidget {
  const Maintenance({super.key});

  @override
  State<Maintenance> createState() => _MaintenanceState();
}

class _MaintenanceState extends State<Maintenance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 100),
            child: Column(
              children: [
                Image.asset(
                  "arona.jpg",
                  width: 300,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Building in progress.",
                  style: GoogleFonts.poppins(fontSize: 20),
                ),
                Text("Go Back", style: GoogleFonts.poppins(fontSize: 20)),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 200,
                  decoration: BoxDecoration(color: Colors.blue[400]),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Confirm",
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: Colors.black),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
