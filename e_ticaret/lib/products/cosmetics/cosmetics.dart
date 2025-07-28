import 'package:flutter/material.dart';
import 'package:e_ticaret/products/cosmetics/cosmetics_data.dart';
import 'package:e_ticaret/products_card.dart';

class CosmeticPage extends StatelessWidget {
  const CosmeticPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.primaryColor,
        title: Text(
          "Kozmetik",
          style: TextStyle(
            color: theme.colorScheme.onPrimary,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: theme.colorScheme.onPrimary),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
          childAspectRatio: 2 / 3,
          children: cosmetics.map((product) {
            return ProductCard(product: product);
          }).toList(),
        ),
      ),
    );
  }
}
