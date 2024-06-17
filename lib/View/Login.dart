import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool Tampil = false;
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset(
                "flutter-app-development.png",
                width: 210,
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blueAccent.withOpacity(.2)),
                child: TextFormField(
                  controller: user,
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
                width: 460,
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.circular(8)),
                child: TextButton(
                  onPressed: () {
                    kosong();
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }

  void kosong() {
    if (user.text.isEmpty || pass.text.isEmpty) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Error"),
            content: const Text("Username atau Password Kosong"),
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
    } else {}
  }
}
