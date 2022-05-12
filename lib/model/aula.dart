class Aula {
  int id;
  int cursoId;
  String titulo;
  String video;
  String descricao;
  List<String> anotacoes = [];

  Aula(
      {required this.id,
      required this.cursoId,
      required this.titulo,
      required this.video,
      required this.descricao,
      required this.anotacoes});
}
