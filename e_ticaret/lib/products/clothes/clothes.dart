import 'package:flutter/material.dart';
import 'clothes_data.dart';
import 'package:e_ticaret/products_card.dart';

class ClothesPage extends StatelessWidget {
  const ClothesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.primaryColor,
        title: Text(
          'Giyim',
          style: TextStyle(
            color: theme.colorScheme.onPrimary,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: BackButton(color: theme.colorScheme.onPrimary),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: clothes.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 2 / 3,
        ),
        itemBuilder: (context, index) {
          return ProductCard(product: clothes[index]);
        },
      ),
    );
  }
}
