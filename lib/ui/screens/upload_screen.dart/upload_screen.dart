import 'package:eshop/ui/screens/assets_path/assets_path.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

class UploadScreen extends StatelessWidget {
  const UploadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomSheet: Padding(
          padding: const EdgeInsets.all(15),
          child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  minimumSize: const Size(double.infinity, 50)),
              onPressed: () {},
              icon: const Icon(Icons.upload),
              label: const Text('Upload')),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      titleField(),
                      const Spacer(),
                      priceField(),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 170,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(-1, 2),
                              blurRadius: 10,
                              color: Colors.grey.withOpacity(.5))
                        ]),
                    child: Row(
                      children: [
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.purple,
                          ),
                          child: Image.asset(
                            AssetsPath.clothes,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Column(
                            children: [
                              ElevatedButton.icon(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.purple),
                                  onPressed: () {},
                                  icon: const Icon(Icons.camera),
                                  label: const Text('Camera')),
                              ElevatedButton.icon(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.purple),
                                  onPressed: () {},
                                  icon: const Icon(Icons.browse_gallery),
                                  label: const Text('Gallery  ')),
                              ElevatedButton.icon(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.purple),
                                  onPressed: () {},
                                  icon: const Icon(Icons.remove_circle),
                                  label: const Text('Remove')),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  categoryField(),
                  const SizedBox(
                    height: 20,
                  ),
                  descField(),
                  quantityField(),
                ],
              ),
            ),
          ),
        ));
  }

  titleField() => SizedBox(
        width: 150,
        child: TextField(
          // controller: emailController,
          decoration: InputDecoration(
            hintText: 'Product name',
            filled: true,
            fillColor: kFillColor,
          ),
        ),
      );

  priceField() => SizedBox(
        width: 150,
        child: TextField(
          keyboardType: TextInputType.number,
          // controller: passwordController,
          decoration: InputDecoration(
            hintText: 'Price \$',
            filled: true,
            fillColor: kFillColor,
          ),
        ),
      );
  descField() => TextField(
        maxLines: 10,
        // controller: emailController,
        decoration: InputDecoration(
            hintText: 'Product description',
            filled: true,
            fillColor: kFillColor,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      );
  quantityField() => TextField(
        keyboardType: TextInputType.number,

        // controller: emailController,
        decoration: InputDecoration(
          hintText: 'Product Quantity',
          filled: true,
          fillColor: kFillColor,
        ),
      );
  categoryField() => TextField(
        // controller: emailController,
        decoration: InputDecoration(
          hintText: 'Product Category',
          filled: true,
          fillColor: kFillColor,
        ),
      );
}
