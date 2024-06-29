// import 'package:flutter/material.dart';

// class MenPage extends StatelessWidget {
//   final List<Product> menProducts = [
//     Product('US \$13.95', 'T-Shirt With Print', 'assets/Boy1.png'),
//     Product('US \$15.59', 'T-Shirt With Print', 'assets/Boy2.png'),
//     Product('US \$16.50', 'T-Shirt With Print', 'assets/Boy3.png'),
//     Product('US \$14.95', 'T-Shirt With Print', 'assets/Boy4.png'),
//     // Add more products as needed
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(
//           255, 34, 40, 49), // Background color to match the design
//       appBar: AppBar(
//         backgroundColor: const Color.fromARGB(255, 34, 40, 49),
//         title: const Text(
//           'Men',
//           style: TextStyle(
//             color: Color.fromARGB(255, 214, 214, 214),
//           ),
//         ),
//         leading: IconButton(
//           icon: const Icon(
//             Icons.arrow_back,
//             color: Color.fromARGB(255, 214, 214, 214),
//           ),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: GridView.builder(
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2, // Display 2 items per row
//             childAspectRatio: 0.63, // Adjust the aspect ratio as needed
//             crossAxisSpacing: 95,
//             mainAxisSpacing: 15,
//           ),
//           itemCount: menProducts.length,
//           itemBuilder: (context, index) {
//             return ProductItem(product: menProducts[index]);
//           },
//         ),
//       ),
//     );
//   }
// }

// class Product {
//   final String price;
//   final String title;
//   final String imageUrl;

//   Product(this.price, this.title, this.imageUrl);
// }

// class ProductItem extends StatelessWidget {
//   final Product product;

//   ProductItem({required this.product});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: const Color.fromARGB(255, 45, 52, 61),
//       margin: EdgeInsets.zero,
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Image.asset(
//               product.imageUrl,
//               width: double.infinity,
//               height: 150,
//               fit: BoxFit.cover,
//             ),
//             const SizedBox(height: 8),
//             Text(
//               product.price,
//               style: const TextStyle(color: Colors.white),
//             ),
//             Text(
//               product.title,
//               style: const TextStyle(color: Colors.white),
//             ),
//             const Spacer(),
//             const Align(
//               alignment: Alignment.bottomRight,
//               child: Icon(Icons.favorite_border, color: Colors.white),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class MenPage extends StatelessWidget {
//   final List<Product> products = [
//     Product('US \$13.95', 'T-Shirt With Print', 'assets/Boy1.png'),
//     Product('US \$15.59', 'T-Shirt With Print', 'assets/Boy2.png'),
//     Product('US \$16.50', 'T-Shirt With Print', 'assets/Boy3.png'),
//     Product('US \$14.95', 'T-Shirt With Print', 'assets/Boy4.png'),
//     // Add more products as needed
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 34, 40, 49),
//       appBar: AppBar(
//         backgroundColor: const Color.fromARGB(255, 34, 40, 49),
//         title: const Text(
//           'Men',
//           style: TextStyle(
//             color: Color.fromARGB(255, 214, 214, 214),
//           ),
//         ),
//         leading: IconButton(
//           icon: const Icon(
//             Icons.arrow_back,
//             color: Color.fromARGB(255, 214, 214, 214),
//           ),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: GridView.builder(
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             childAspectRatio: 0.70,
//             crossAxisSpacing: 8,
//             mainAxisSpacing: 15,
//           ),
//           itemCount: products.length,
//           itemBuilder: (context, index) {
//             return ProductItem(product: products[index]);
//           },
//         ),
//       ),
//     );
//   }
// }

// class Product {
//   final String price;
//   final String title;
//   final String imageUrl;

//   Product(this.price, this.title, this.imageUrl);
// }

// class ProductItem extends StatelessWidget {
//   final Product product;

//   ProductItem({required this.product});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: const Color.fromARGB(255, 45, 52, 61),
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Image.asset(
//               product.imageUrl,
//               fit: BoxFit.cover,
//               width: double.infinity,
//               height: 190,
//             ),
//             const SizedBox(height: 8),
//             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//             Text(
//               product.price,
//               style: const TextStyle(color: Colors.white),
//             ),
//             SizedBox(height: 4),
//             const Align(
//               alignment: Alignment.bottomRight,
//               child: Icon(
//                 Icons.favorite_border,
//                 color: Colors.white,
//               ),
//             ),

//             ]
//         )
//         const SizedBox(height: 4),
//             Text(
//               product.title,
//               style: const TextStyle(color: Colors.white),
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//             ),
//             const Spacer(),
//             // Align(
//             //   alignment: Alignment.bottomRight,
//             //   child: Icon(
//             //     Icons.favorite_border,
//             //     color: Colors.white,
//             //   ),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class MenPage extends StatelessWidget {
  final List<Product> products = [
    Product('US \$13.95', 'T-Shirt With Print', 'assets/Boy1.png'),
    Product('US \$15.59', 'T-Shirt With Print', 'assets/Boy2.png'),
    Product('US \$16.50', 'T-Shirt With Print', 'assets/Boy3.png'),
    Product('US \$14.95', 'T-Shirt With Print', 'assets/Boy4.png'),
    // Add more products as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 40, 49),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 34, 40, 49),
        title: const Text(
          'Men',
          style: TextStyle(
            color: Color.fromARGB(255, 214, 214, 214),
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 214, 214, 214),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            crossAxisSpacing: 8,
            mainAxisSpacing: 15,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ProductItem(product: products[index]);
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
