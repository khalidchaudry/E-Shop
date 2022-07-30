import 'package:eshop/models/products_model.dart';
import 'package:eshop/ui/screens/assets_path/assets_path.dart';
import 'package:flutter/cupertino.dart';

class ProductsModelProvider with ChangeNotifier {
  List<ProductsModel> productModelProvider = [
    ProductsModel(
        productName: 'Hijab Queen',
        productDesc: 'Hijab is the most selling product in the world',
        productImage: AssetsPath.arival,
        productCategoryName: 'Clothes',
        productPrice: 199.99.toDouble(),
        productQuantity: 1.toInt()),
    ProductsModel(
        productName: 'Child Fracks',
        productDesc: 'Child fracks is the most selling product in the world',
        productImage: AssetsPath.clothes,
        productCategoryName: 'Clothes',
        productPrice: 149.99.toDouble(),
        productQuantity: 1.toInt()),
  ];
}
