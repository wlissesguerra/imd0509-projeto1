import 'package:alcanceaulas/model/aula.dart';
import 'package:flutter/material.dart';

import '../utils/routes.dart';

class AulasLista extends StatefulWidget {
  final List<Aula> aulas;

  AulasLista(this.aulas);

  @override
  State<AulasLista> createState() => _AulasListaState();
}

class _AulasListaState extends State<AulasLista> {
  void _visualizarAula(Aula aula) {
    Navigator.of(context).pushNamed(AppRoutes.AULA, arguments: aula);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: widget.aulas.length,
        itemBuilder: (context, index) {
          final aula = widget.aulas[index];
          return ListTile(
            title: Text(aula.titulo),
            trailing: Icon(Icons.navigate_next),
            onTap: () => _visualizarAula(aula),
          );
        },
      ),
    );
  }
}
