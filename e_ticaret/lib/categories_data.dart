import 'package:e_ticaret/products/cosmetics/cosmetics.dart';
import 'package:e_ticaret/products/electronic/electronic.dart';

import 'categories_model.dart';
import 'products/clothes/clothes.dart';

List<CategoryModel> categories = [
  CategoryModel(
    name: "Giyim",
    image: "assets/png/giyim.png",
    page: ClothesPage(),
  ),
  CategoryModel(
    name: "Kozmetik",
    image: "assets/png/kozmetik.png",
    page: CosmeticPage(),
  ),
  CategoryModel(
    name: "Elektronik",
    image: "assets/png/elektronik.png",
    page: ElectronicsPage(),
  ),
];
