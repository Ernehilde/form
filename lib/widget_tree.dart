import 'package:flutter/material.dart';
import 'package:form/View/Dashboard.dart';
import 'package:form/View/Login2.dart';
import 'package:form/auth.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Auth().authStateChanges,
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return const Dashboard();
          } else {
            return const Login2();
          }
        }));
  }
}
