import 'package:dwm_halimaa/pages/product.details.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final dynamic product;
  final bool details;
  const ProductItem({Key? key, required this.product, required this.details})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (product == null) {
      // Handle the case where the product object is null
      return const SizedBox(); // Return an empty container or any other desired widget
    }
    return ListTile(
      title: Padding(
        padding: EdgeInsets.all(6),
        child: Column(
          children: [
            Card(
              color: Colors.white70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 200,
                    width: 140,
                    child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${product["name"]}"),
                            Text("${product["price"]}"),
                            if (product["promotion"] == true)
                              const Icon(
                                Icons.handshake_rounded,
                                color: Colors.red,
                              ),
                            Row(
                              children: [
                                for (int i = 0; i < product["stars"]; i++)
                                  const Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                  )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      if (details) return;
                      /* Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDetails(
                                    productId: product["id"],
                                  )));*/
                      Navigator.pushNamed(context, "/productDetails",
                          arguments: product['id']);
                    },
                    child: Image(
                        width: 190, image: AssetImage("${product['image']}")),
                  )
                ],
              ),
            ),
            if (details == true)
              Card(
                child: Text("${product['description']}"),
              )
          ],
        ),
      ),
    );
  }
}
