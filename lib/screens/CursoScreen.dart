import 'package:alcanceaulas/component/lista_aulas.dart';
import 'package:alcanceaulas/data/aulas.dart';
import 'package:alcanceaulas/model/aula.dart';
import 'package:alcanceaulas/model/curso.dart';
import 'package:alcanceaulas/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../component/drawer.dart';

class CursoScreen extends StatefulWidget {
  const CursoScreen({Key? key}) : super(key: key);

  State<CursoScreen> createState() => _CursoScreenState();
}

class _CursoScreenState extends State<CursoScreen> {
  @override
  Widget build(BuildContext context) {
    Curso curso = ModalRoute.of(context)?.settings.arguments as Curso;
    return Scaffold(
      appBar: AppBar(
        title: Text("${curso.titulo}"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              curso.foto,
              fit: BoxFit.fill,
              width: double.infinity,
            ),
            AulasLista(DATA_AULAS),
          ],
        ),
      ),
    );
  }
}
