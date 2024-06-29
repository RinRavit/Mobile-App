import 'package:flutter/material.dart';

class WomenPage extends StatelessWidget {
  final List<Product> womenProducts = [
    Product('US \$8.34', 'Hooded Jackets', 'assets/Girl1.png'),
    Product('US \$12.99', 'Casual Shirt', 'assets/Girl2.png'),
    Product('US \$5.99', 'Summer Dress', 'assets/Girl3.png'),
    Product('US \$9.99', 'Denim Jeans', 'assets/Girl4.png'),
    // Add more products as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(
          255, 34, 40, 49), // Background color to match the design
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 34, 40, 49),
        title: Text(
          'Women',
          style: TextStyle(
            color: Color.fromARGB(255, 214, 214, 214),
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 214, 214, 214),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Display 2 items per row
            childAspectRatio: 0.70, // Adjust the aspect ratio as needed
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: womenProducts.length,
          itemBuilder: (context, index) {
            return ProductItem(product: womenProducts[index]);
          },
        ),
      ),
    );
  }
}

class Product {
  final String price;
  final String title;
  final String imageUrl;

  Product(this.price, this.title, this.imageUrl);
}

class ProductItem extends StatelessWidget {
  final Product product;

  ProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    // return Card(
    //   color: Color.fromARGB(255, 45, 52, 61),
    //   margin: EdgeInsets.zero,
    //   child: Padding(
    //     padding: EdgeInsets.all(8.0),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         Image.asset(
    //           product.imageUrl,
    //           width: double.infinity,
    //           height: 190,
    //           fit: BoxFit.cover,
    //         ),
    //         SizedBox(height: 8),
    //         Text(
    //           product.price,
    //           style: TextStyle(color: Colors.white),
    //         ),
    //         Text(
    //           product.title,
    //           style: TextStyle(color: Colors.white),
    //         ),
    //         Spacer(),
    //         Align(
    //           alignment: Alignment.bottomRight,
    //           child: Icon(Icons.favorite_border, color: Colors.white),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
    return Card(
      color: const Color.fromARGB(255, 45, 52, 61),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              product.imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 190,
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  product.price,
                  style: const TextStyle(color: Colors.white),
                ),
                Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              product.title,
              style: const TextStyle(color: Colors.white),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
