import 'package:flutter/material.dart';
import 'package:form/View/Maintenance.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../auth.dart';

class Login2 extends StatefulWidget {
  const Login2({super.key});

  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  bool Tampil = false;
  bool isLogin = true;
  String? errorMessage = '';
  TextEditingController username = TextEditingController();
  TextEditingController pass = TextEditingController();

  Future<void> signInWithEmailAndPassword() async {
    try {
      await Auth().signInWithEmailAndPassword(
          email: username.text, password: pass.text);
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });

      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Error'),
              content: const Text('Email atau Password Salah'),
              actions: [
                TextButton(
                    onPressed: Navigator.of(context).pop,
                    child: const Text('OK'))
              ],
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image.asset("galaxy.webp"),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              Text(
                "USER LOGIN",
                style: GoogleFonts.poppins(
                    fontSize: 24, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blueAccent.withOpacity(.2)),
                child: TextFormField(
                  controller: username,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: "Username",
                      border: InputBorder.none),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blueAccent.withOpacity(.2)),
                child: TextFormField(
                  obscureText: !Tampil,
                  controller: pass,
                  decoration: InputDecoration(
                      icon: const Icon(Icons.lock),
                      hintText: "Password",
                      border: InputBorder.none,
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            Tampil = !Tampil;
                          });
                        },
                        icon: Icon(
                            !Tampil ? Icons.visibility : Icons.visibility_off),
                      )),
                ),
              ),
              Container(
                width: 440,
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.symmetric(vertical: 4),
                decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.circular(8)),
                child: TextButton(
                  onPressed: () {
                    signInWithEmailAndPassword();
                  },
                  child: Text(
                    "Login",
                    style:
                        GoogleFonts.poppins(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Maintenance()));
              },
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Text(
                  "Create Account",
                  style: GoogleFonts.poppins(
                      fontSize: 14, fontWeight: FontWeight.w600),
                ),
              ),
            )
          ],
        )
      ],
    ));
  }
}
