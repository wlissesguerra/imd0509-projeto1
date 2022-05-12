import 'package:alcanceaulas/model/aula.dart';
import 'package:alcanceaulas/model/curso.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/routes.dart';

class CursoLista extends StatefulWidget {
  final List<Curso> cursos;

  CursoLista(this.cursos);

  @override
  State<CursoLista> createState() => _CursoListaState();
}

class _CursoListaState extends State<CursoLista> {
  void _visualizarCurso(Curso curso) {
    Navigator.of(context).pushNamed(AppRoutes.CURSO, arguments: curso);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.cursos.length,
      itemBuilder: (context, index) {
        final curso = widget.cursos[index];
        return Container(
          child: Card(
            margin: EdgeInsets.only(bottom: 32),
            elevation: 1,
            child: InkWell(
              onTap: () => _visualizarCurso(curso),
              child: Column(
                children: [
                  Image.network(
                    curso.foto,
                    fit: BoxFit.fill,
                    width: double.infinity,
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      curso.titulo,
                      style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.headline4),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
        // return ListTile(
        //   title: Text(curso.titulo),
        //   trailing: const Icon(Icons.navigate_next),
        //   onTap: ,
        // );
      },
    );
  }
}
