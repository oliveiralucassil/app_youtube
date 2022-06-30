import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Inscricoes extends StatefulWidget {
  const Inscricoes({Key? key}) : super(key: key);

  @override
  State<Inscricoes> createState() => _InscricoesState();
}

class _InscricoesState extends State<Inscricoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(
              child: Text("Inscrições", style: TextStyle(fontSize: 25)))),
    );
  }
}
