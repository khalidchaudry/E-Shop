import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eshop/models/products_model.dart';
import 'package:flutter/cupertino.dart';

import '../ui/screens/constants/constants.dart';

class ProductsModelProvider with ChangeNotifier {
  List<ProductsModel> productModelProvider = [
    // ProductsModel(
    //     productName: 'Hijab Queen',
    //     productDesc: 'Hijab is the most selling product in the world',
    //     productImage: AssetsPath.arival,
    //     productCategoryName: 'Clothes',
    //     productPrice: 199.99,
    //     productQuantity: 1.toInt()),
    // ProductsModel(
    //     productName: 'Child Fracks',
    //     productDesc: 'Child fracks is the most selling product in the world',
    //     productImage: AssetsPath.clothes,
    //     productCategoryName: 'Clothes',
    //     productPrice: 149.99,
    //     productQuantity: 1.toInt()),
  ];
  Future<void> fetchProductsData() async {
    await fireStore.collection('users').get().then((QuerySnapshot snapshot) {
      for (var element in snapshot.docs) {
        productModelProvider.insert(
            0,
            ProductsModel(
                productName: element.get('productName'),
                productDesc: element.get('productDesc'),
                productImage: element.get(('productImage')),
                productCategoryName: element.get('productCategoryName'),
                productPrice: element.get('productPrice'),
                productQuantity: element.get('productQuantity')));
      }
    });
    notifyListeners();
  }

  List<ProductsModel> searchQuery({required String searchText}) {
    List searchList = productModelProvider
        .where((element) => element.productName
            .toLowerCase()
            .contains(searchText.toLowerCase()))
        .toList();
    notifyListeners();

    return [...searchList];
  }
}
