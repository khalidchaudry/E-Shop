import 'package:badges/badges.dart';
import 'package:eshop/providers/product_model_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewArrivalProductWidget extends StatelessWidget {
  const NewArrivalProductWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productList =
        Provider.of<ProductsModelProvider>(context).productModelProvider;
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: const Offset(-2, -2),
                blurRadius: 10,
                color: Colors.grey.withOpacity(.5))
          ]),
      height: 270,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Badge(
                  badgeColor: Colors.purple,
                  shape: BadgeShape.square,
                  borderRadius: BorderRadius.circular(10),
                  animationDuration: const Duration(milliseconds: 500),
                  toAnimate: true,
                  showBadge: true,
                  badgeContent: const Text(
                    'New Arrival',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TextButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, '/details_page'),
                  child: Image.asset(
                    productList[index].productImage,
                    height: 150,
                    width: 150,
                  ),
                ),
                Text(
                  productList[index].productName,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.purple),
                ),
                Text(
                  'price: \$${productList[index].productPrice.toString()}',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.purple),
                ),
              ],
            );
          },
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          itemCount: productList.length),
    );
  }
}
