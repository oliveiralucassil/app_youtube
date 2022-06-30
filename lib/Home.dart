import 'package:flutter/material.dart';
import 'package:projeto_app_youtube/Telas/Biblioteca.dart';
import 'package:projeto_app_youtube/Telas/EmAlta.dart';
import 'package:projeto_app_youtube/Telas/Inicio.dart';
import 'package:projeto_app_youtube/Telas/Inscricoes.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> telas = [
    Inicio(),
    EmAlta(),
    Inscricoes(),
    Biblioteca(),
  ];
  int _indice = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.grey,
          opacity: 1,
        ),
        title: Image.asset(
          "images/youtube.png",
          height: 22,
          width: 98,
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.videocam),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.account_circle),
          ),
        ],
      ),
      body: Container(child: telas[_indice]),
      //Barra Inferior
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indice,
        onTap: (index) {
          setState(() {
            _indice = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        items: const [
          BottomNavigationBarItem(
            label: "Início",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Em Alta",
            icon: Icon(Icons.whatshot),
          ),
          BottomNavigationBarItem(
            label: "Inscrções",
            icon: Icon(Icons.subscriptions),
          ),
          BottomNavigationBarItem(
            label: "Biblioteca",
            icon: Icon(Icons.folder),
          ),
        ],
      ),
    );
  }
}
