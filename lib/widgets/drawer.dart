import 'package:flutter/material.dart';
import 'package:news_app/constants/constants.dart';
import 'package:news_app/views/about.dart';
import 'package:news_app/views/translate_page.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: kCorSecundaria,
        child: ListView(
          padding: padding,
          children: <Widget>[
            const SizedBox(height: 48),
            buildMenuItem(
              texto: "Idioma",
              icon: Icons.translate,
              onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox(height: 16),
            buildMenuItem(texto: "Modo escuro", icon: Icons.brightness_6),
            const SizedBox(height: 16),
            const SizedBox(height: 20),
            Divider(
              color: kCorPrimaria,
            ),
            const SizedBox(height: 20),
            buildMenuItem(
              texto: "Sobre o App",
              icon: Icons.emoji_emotions,
              onClicked: () => selectedItem(context, 1),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String texto,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    return ListTile(
      leading: Icon(icon, color: kCorPrimaria),
      title: Text(
        texto,
        style: TextStyle(
          color: kCorPrimaria,
          fontSize: 18,
        ),
      ),
      hoverColor: kBranco,
      onTap: onClicked,
    );
  }
}

selectedItem(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => TranslatePage(),
        ),
      );
      break;
    case 1:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => AboutApp(),
        ),
      );
      break;
  }
}
