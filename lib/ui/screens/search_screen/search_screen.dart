import 'package:badges/badges.dart';
import 'package:eshop/providers/product_model_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../home_screen/widgets/details_page_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final searchProvider = Provider.of<ProductsModelProvider>(context);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: TextField(
            onChanged: (value) {
              setState(() {
                searchController.text.toLowerCase();

                searchProvider.searchQuery(searchText: value);
              });
            },
            controller: searchController,
            decoration: InputDecoration(
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.white,
                hintText: 'Search here',
                hintStyle: const TextStyle(color: Colors.purple),
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                    onPressed: () => searchController.clear(),
                    icon: const Icon(
                      Icons.clear,
                      color: Colors.red,
                    ))),
          ),
        ),
        body: SafeArea(
            child: GridView.count(
                padding: const EdgeInsets.all(20),
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 200 / 350,
                children: List.generate(
                    searchProvider.productModelProvider.length, (index) {
                  return Column(
                    children: [
                      SizedBox(
                        child: Stack(
                          children: [
                            TextButton(
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DetailsPageWidget(index: index))),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: Image.network(
                                  searchProvider
                                      .productModelProvider[index].productImage,
                                  height: 150,
                                  width: 150,
                                ),
                              ),
                            ),
                            Badge(
                              badgeColor: Colors.purple,
                              shape: BadgeShape.square,
                              borderRadius: BorderRadius.circular(10),
                              animationDuration:
                                  const Duration(milliseconds: 500),
                              toAnimate: true,
                              showBadge: true,
                              badgeContent: const Text(
                                'New',
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                      Text(
                        searchProvider.productModelProvider[index].productName,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.purple),
                      ),
                    ],
                  );
                }))));
  }
}
