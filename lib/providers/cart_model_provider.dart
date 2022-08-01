import 'package:flutter/material.dart';

class CartModelProvider with ChangeNotifier {
  addProductToCart(
      {required String imageUrl,
      required String title,
      required double price}) {
    notifyListeners();
  }
}
