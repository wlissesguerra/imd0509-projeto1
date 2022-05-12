import 'package:flutter/material.dart';
import 'package:alcanceaulas/model/aula.dart';

final DATA_AULAS = [
  Aula(
    id: 1,
    cursoId: 1,
    titulo: "Aula 01 - Introdução",
    video:
        "https://media.istockphoto.com/vectors/video-player-template-for-web-or-mobile-apps-blogging-vector-id1310634705?k=20&m=1310634705&s=612x612&w=0&h=6ezbTj2MgmVwmQEx6zqmage2m2bWwcRSjiFSQatczK4=",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque fringilla tempor vehicula. Nullam quis enim id odio pretium ultricies. Suspendisse nisl neque, tempor sed tincidunt at, vehicula at enim.",
    anotacoes: [],
  ),
  Aula(
    id: 2,
    cursoId: 1,
    titulo: "Aula 02 - Apresentação detalhada",
    video:
        "https://media.istockphoto.com/vectors/video-player-template-for-web-or-mobile-apps-blogging-vector-id1310634705?k=20&m=1310634705&s=612x612&w=0&h=6ezbTj2MgmVwmQEx6zqmage2m2bWwcRSjiFSQatczK4=",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque fringilla tempor vehicula. Nullam quis enim id odio pretium ultricies. Suspendisse nisl neque, tempor sed tincidunt at, vehicula at enim.",
    anotacoes: [],
  ),
  Aula(
    id: 3,
    cursoId: 1,
    titulo: "Aula 03 - O que é Docker?",
    video:
        "https://media.istockphoto.com/vectors/video-player-template-for-web-or-mobile-apps-blogging-vector-id1310634705?k=20&m=1310634705&s=612x612&w=0&h=6ezbTj2MgmVwmQEx6zqmage2m2bWwcRSjiFSQatczK4=",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque fringilla tempor vehicula. Nullam quis enim id odio pretium ultricies. Suspendisse nisl neque, tempor sed tincidunt at, vehicula at enim.",
    anotacoes: [
      "O que é o termo apontado pelo instrutor?",
      "A primeira prova será realizada dia 15/05/2022"
    ],
  ),
  Aula(
    id: 4,
    cursoId: 1,
    titulo: "Aula 04 - Por que Docker?",
    video:
        "https://media.istockphoto.com/vectors/video-player-template-for-web-or-mobile-apps-blogging-vector-id1310634705?k=20&m=1310634705&s=612x612&w=0&h=6ezbTj2MgmVwmQEx6zqmage2m2bWwcRSjiFSQatczK4=",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque fringilla tempor vehicula. Nullam quis enim id odio pretium ultricies. Suspendisse nisl neque, tempor sed tincidunt at, vehicula at enim.",
    anotacoes: [],
  ),
  Aula(
    id: 5,
    cursoId: 1,
    titulo: "Aula 05 - Diferença entre versões",
    video:
        "https://media.istockphoto.com/vectors/video-player-template-for-web-or-mobile-apps-blogging-vector-id1310634705?k=20&m=1310634705&s=612x612&w=0&h=6ezbTj2MgmVwmQEx6zqmage2m2bWwcRSjiFSQatczK4=",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque fringilla tempor vehicula. Nullam quis enim id odio pretium ultricies. Suspendisse nisl neque, tempor sed tincidunt at, vehicula at enim.",
    anotacoes: [],
  ),
  Aula(
    id: 6,
    cursoId: 1,
    titulo: "Aula 06 - Instalação Windows",
    video:
        "https://media.istockphoto.com/vectors/video-player-template-for-web-or-mobile-apps-blogging-vector-id1310634705?k=20&m=1310634705&s=612x612&w=0&h=6ezbTj2MgmVwmQEx6zqmage2m2bWwcRSjiFSQatczK4=",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque fringilla tempor vehicula. Nullam quis enim id odio pretium ultricies. Suspendisse nisl neque, tempor sed tincidunt at, vehicula at enim.",
    anotacoes: [],
  ),
  Aula(
    id: 7,
    cursoId: 1,
    titulo: "Aula 07 - Instalação Mac",
    video:
        "https://media.istockphoto.com/vectors/video-player-template-for-web-or-mobile-apps-blogging-vector-id1310634705?k=20&m=1310634705&s=612x612&w=0&h=6ezbTj2MgmVwmQEx6zqmage2m2bWwcRSjiFSQatczK4=",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque fringilla tempor vehicula. Nullam quis enim id odio pretium ultricies. Suspendisse nisl neque, tempor sed tincidunt at, vehicula at enim.",
    anotacoes: [],
  ),
  Aula(
    id: 8,
    cursoId: 1,
    titulo: "Aula 08 - Instalação Linux",
    video:
        "https://media.istockphoto.com/vectors/video-player-template-for-web-or-mobile-apps-blogging-vector-id1310634705?k=20&m=1310634705&s=612x612&w=0&h=6ezbTj2MgmVwmQEx6zqmage2m2bWwcRSjiFSQatczK4=",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque fringilla tempor vehicula. Nullam quis enim id odio pretium ultricies. Suspendisse nisl neque, tempor sed tincidunt at, vehicula at enim.",
    anotacoes: [],
  ),
  Aula(
    id: 9,
    cursoId: 1,
    titulo: "Aula 09 - Principais problemas de instalação",
    video:
        "https://media.istockphoto.com/vectors/video-player-template-for-web-or-mobile-apps-blogging-vector-id1310634705?k=20&m=1310634705&s=612x612&w=0&h=6ezbTj2MgmVwmQEx6zqmage2m2bWwcRSjiFSQatczK4=",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque fringilla tempor vehicula. Nullam quis enim id odio pretium ultricies. Suspendisse nisl neque, tempor sed tincidunt at, vehicula at enim.",
    anotacoes: [],
  ),
  Aula(
    id: 10,
    cursoId: 1,
    titulo: "Aula 10 - Docker no VS Code",
    video:
        "https://media.istockphoto.com/vectors/video-player-template-for-web-or-mobile-apps-blogging-vector-id1310634705?k=20&m=1310634705&s=612x612&w=0&h=6ezbTj2MgmVwmQEx6zqmage2m2bWwcRSjiFSQatczK4=",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque fringilla tempor vehicula. Nullam quis enim id odio pretium ultricies. Suspendisse nisl neque, tempor sed tincidunt at, vehicula at enim.",
    anotacoes: [],
  ),
  Aula(
    id: 11,
    cursoId: 1,
    titulo: "Aula 11 - Alternativa ao terminal do Windows",
    video:
        "https://media.istockphoto.com/vectors/video-player-template-for-web-or-mobile-apps-blogging-vector-id1310634705?k=20&m=1310634705&s=612x612&w=0&h=6ezbTj2MgmVwmQEx6zqmage2m2bWwcRSjiFSQatczK4=",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque fringilla tempor vehicula. Nullam quis enim id odio pretium ultricies. Suspendisse nisl neque, tempor sed tincidunt at, vehicula at enim.",
    anotacoes: [],
  ),
  Aula(
    id: 4,
    cursoId: 1,
    titulo: "Aula 12 - Hands On, Docker na Prática",
    video:
        "https://media.istockphoto.com/vectors/video-player-template-for-web-or-mobile-apps-blogging-vector-id1310634705?k=20&m=1310634705&s=612x612&w=0&h=6ezbTj2MgmVwmQEx6zqmage2m2bWwcRSjiFSQatczK4=",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque fringilla tempor vehicula. Nullam quis enim id odio pretium ultricies. Suspendisse nisl neque, tempor sed tincidunt at, vehicula at enim.",
    anotacoes: [],
  ),
  Aula(
    id: 13,
    cursoId: 1,
    titulo: "Aula 13 - Revisão",
    video:
        "https://media.istockphoto.com/vectors/video-player-template-for-web-or-mobile-apps-blogging-vector-id1310634705?k=20&m=1310634705&s=612x612&w=0&h=6ezbTj2MgmVwmQEx6zqmage2m2bWwcRSjiFSQatczK4=",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque fringilla tempor vehicula. Nullam quis enim id odio pretium ultricies. Suspendisse nisl neque, tempor sed tincidunt at, vehicula at enim.",
    anotacoes: [],
  ),
  Aula(
    id: 14,
    cursoId: 1,
    titulo: "Aula 14 - Guia de bolso",
    video:
        "https://media.istockphoto.com/vectors/video-player-template-for-web-or-mobile-apps-blogging-vector-id1310634705?k=20&m=1310634705&s=612x612&w=0&h=6ezbTj2MgmVwmQEx6zqmage2m2bWwcRSjiFSQatczK4=",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque fringilla tempor vehicula. Nullam quis enim id odio pretium ultricies. Suspendisse nisl neque, tempor sed tincidunt at, vehicula at enim.",
    anotacoes: [],
  ),
  Aula(
    id: 15,
    cursoId: 1,
    titulo: "Aula 15 - Conclusão",
    video:
        "https://media.istockphoto.com/vectors/video-player-template-for-web-or-mobile-apps-blogging-vector-id1310634705?k=20&m=1310634705&s=612x612&w=0&h=6ezbTj2MgmVwmQEx6zqmage2m2bWwcRSjiFSQatczK4=",
    descricao:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque fringilla tempor vehicula. Nullam quis enim id odio pretium ultricies. Suspendisse nisl neque, tempor sed tincidunt at, vehicula at enim.",
    anotacoes: [],
  ),
];
