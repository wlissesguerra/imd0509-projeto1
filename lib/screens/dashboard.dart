import 'package:alcanceaulas/component/lista_aulas.dart';
import 'package:alcanceaulas/data/aulas.dart';
import 'package:alcanceaulas/data/cursos.dart';
import 'package:alcanceaulas/model/aula.dart';
import 'package:alcanceaulas/model/usuario.dart';
import 'package:alcanceaulas/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../component/drawer.dart';
import '../component/lista_cursos.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    Usuario usuario = ModalRoute.of(context)?.settings.arguments as Usuario;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      drawer: Drawer(
        child: DrawerComponent(usuario),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                "Olá,\n${usuario.nome}!",
                style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.headline1),
              ),
            ),
            CursoLista(DATA_CURSOS),
          ],
        ),
      ),
    );
  }
}
