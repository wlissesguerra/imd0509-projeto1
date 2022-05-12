import 'package:alcanceaulas/component/lista_aulas.dart';
import 'package:alcanceaulas/data/aulas.dart';
import 'package:alcanceaulas/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../component/anotacaoForm.dart';
import '../model/aula.dart';

class AulaScreen extends StatefulWidget {
  @override
  State<AulaScreen> createState() => _AulaScreenState();
}

class _AulaScreenState extends State<AulaScreen> {
  List<String> anotacoes = [];
  void _openAnotacaoForm() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(32),
          height: 600,
          color: Colors.white,
          child: AnotacaoForm(_salvarAnotacao),
        );
      },
    );
  }

  _salvarAnotacao(String anotacao) {
    setState(() {
      anotacoes.add(anotacao);
    });
  }

  Widget build(BuildContext context) {
    final aula = ModalRoute.of(context)?.settings.arguments as Aula;
    anotacoes = aula.anotacoes;
    return Scaffold(
      appBar: AppBar(
        title: Text(aula.titulo),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                aula.descricao,
                style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.bodyText1),
              ),
            ),
            Image.network(aula.video),
            Container(
              margin: const EdgeInsets.only(top: 32),
              padding: const EdgeInsets.all(16),
              color: Colors.yellowAccent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Anotações",
                      style: GoogleFonts.lato(
                        textStyle: Theme.of(context).textTheme.headline4,
                      )),
                  const Padding(padding: EdgeInsets.only(bottom: 16)),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: anotacoes.length,
                      itemBuilder: (context, index) {
                        final anotacao = anotacoes[index];
                        return Text(
                          "- $anotacao",
                          style: GoogleFonts.lato(
                              textStyle: Theme.of(context).textTheme.bodyText1),
                        );
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.edit),
        onPressed: () {
          _openAnotacaoForm();
        },
      ),
    );
  }
}
