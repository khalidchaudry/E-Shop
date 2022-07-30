import 'package:eshop/providers/product_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductListWidget extends StatelessWidget {
  const ProductListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productList =
        Provider.of<ProductListProvider>(context).productListProvider;
    return SizedBox(
      height: 300,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Image.asset(
                  productList[index].productListImage,
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                Text(productList[index].productListName)
              ],
            );
          },
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          itemCount: productList.length),
    );
  }
}
