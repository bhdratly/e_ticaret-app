import 'package:flutter/material.dart';
import 'categories_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.primaryColor,
        title: Text(
          "Kategoriler",
          style: TextStyle(color: theme.colorScheme.onPrimary),
        ),
        leading: BackButton(color: theme.colorScheme.onPrimary),
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];

          return Card(
            color: theme.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: Image.asset(category.image, width: 40),
              title: Text(
                category.name,
                style: TextStyle(color: theme.colorScheme.onPrimary),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => category.page),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
