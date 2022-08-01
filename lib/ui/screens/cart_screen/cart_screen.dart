import 'package:eshop/ui/screens/cart_screen/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.purple,
            )),
        elevation: .5,
        title: const Text(
          'Cart(1)',
          style: TextStyle(color: Colors.purple),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
                color: Colors.red,
              ))
        ],
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // EmptyCartWidget(),
            const CartItemWidget(),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 5),
              child: Row(
                children: [
                  ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                      ),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.shopping_cart,
                      ),
                      label: const Text('Check out')),
                  const Spacer(),
                  const Text(
                    'Price: ',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  const Text(
                    '\$${150}',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
