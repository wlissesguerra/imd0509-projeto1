import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/usuario.dart';
import '../utils/routes.dart';

class DrawerComponent extends StatelessWidget {
  final Usuario usuario;
  DrawerComponent(this.usuario);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 100, 32, 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(usuario.foto),
            ),
            title: Text(
              "Meu Perfil",
              style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.bodyText1),
            ),
          ),
          const Divider(
            color: Colors.grey,
          ),
          ListTile(
            leading: const Icon(Icons.help_outline),
            title: Text(
              "Ajuda",
              style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.bodyText1),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: Text(
              "Configurações",
              style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.bodyText1),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: Text(
              "Sair",
              style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.bodyText1),
            ),
            onTap: () {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil(AppRoutes.LOGIN, (route) => false);
            },
          ),
        ],
      ),
    );
  }
}
