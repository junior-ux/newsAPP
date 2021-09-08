import 'package:flutter/material.dart';
import 'package:news_app/helper/data.dart';

import 'category_tile.dart';

class CategoriasWidget extends StatelessWidget {
  const CategoriasWidget({
    Key? key,
    required this.categorias,
  }) : super(key: key);

  final List<CategoryModel> categorias;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      height: 80,
      child: ListView.builder(
        itemCount: categorias.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryTile(
            imageUrl: categorias[index].imageUrl,
            categoryName: categorias[index].categoryName,
          );
        },
      ),
    );
  }
}
