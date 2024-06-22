// import 'package:flutter/material.dart';

// class SearchPage extends StatelessWidget {
//   final List<Product> products = [
//     Product(
//         'US \$13.95', 'T-Shirt With Print', 'https://via.placeholder.com/150'),
//     Product('US \$23.95', 'Hoodie', 'https://via.placeholder.com/150'),
//     Product('US \$33.95', 'Jeans', 'https://via.placeholder.com/150'),
//     Product('US \$43.95', 'Jacket', 'https://via.placeholder.com/150'),
//     // Add more products as needed
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor:
//           Color.fromARGB(255, 34, 40, 49), // Updated background color
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(255, 34, 40, 49),
//         title: TextField(
//           style: TextStyle(color: Colors.white),
//           decoration: InputDecoration(
//             hintText: 'Search...',
//             hintStyle: TextStyle(color: Colors.grey),
//             border: InputBorder.none,
//             icon: Icon(Icons.search, color: Colors.grey),
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: GridView.builder(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             childAspectRatio: 0.7,
//             crossAxisSpacing: 10,
//             mainAxisSpacing: 10,
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
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.grey[900],
//         borderRadius: BorderRadius.circular(16.0),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             height: 60,
//             width: 60,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(16.0),
//               image: DecorationImage(
//                 image: NetworkImage(product.imageUrl),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//               product.price,
//               style: TextStyle(color: Colors.white),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8.0),
//             child: Text(
//               product.title,
//               style: TextStyle(color: Colors.white),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class SearchPage extends StatelessWidget {
//   final List<Product> products = [
//     Product(
//         'US \$13.95', 'T-Shirt With Print', 'https://via.placeholder.com/150'),
//     Product('US \$23.95', 'Hoodie', 'https://via.placeholder.com/150'),
//     Product('US \$33.95', 'Jeans', 'https://via.placeholder.com/150'),
//     Product('US \$43.95', 'Jacket', 'https://via.placeholder.com/150'),
//     // Add more products as needed
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor:
//           Color.fromARGB(255, 34, 40, 49), // Updated background color
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(255, 34, 40, 49),
//         title: TextField(
//           style: TextStyle(color: Colors.white),
//           decoration: InputDecoration(
//             hintText: 'Search...',
//             hintStyle: TextStyle(color: Colors.grey),
//             border: InputBorder.none,
//             icon: Icon(Icons.search, color: Colors.grey),
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: GridView.builder(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             childAspectRatio: 0.7,
//             crossAxisSpacing: 10,
//             mainAxisSpacing: 10,
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
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.grey[900],
//         borderRadius: BorderRadius.circular(16.0),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [

//           Container(
//             height: 100,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(16.0),
//               image: DecorationImage(
//                 image: NetworkImage(product.imageUrl),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//               product.price,
//               style: TextStyle(color: Colors.white),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8.0),
//             child: Text(
//               product.title,
//               style: TextStyle(color: Colors.white),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class SearchPage extends StatelessWidget {
//   final List<Product> products = [
//     Product('US \$13.95', 'T-Shirt With Print', 'assets/Boy1.png'),
//     Product('US \$23.95', 'Hoodie', 'assets/Boy2.png'),
//     Product('US \$33.95', 'Jeans', 'assets/Boy3.png'),
//     Product('US \$43.95', 'Jacket', 'assets/Boy4.png'),
//     Product('US \$43.95', 'Jacket', 'assets/Boy5.png'),
//     Product('US \$43.95', 'Jacket', 'assets/Boy6.png'),
//     Product('US \$43.95', 'Jacket', 'assets/Girl1.png'),
//     Product('US \$17.99', 'Cropped Jacket', 'assets/Girl2.png'),
//     Product('US \$8.34', 'Hooded Jackets', 'assets/Girl3.png'),
//     Product('US \$11.59', 'Croped T-Shirt', 'assets/Girl4.png'),
//     Product('US \$43.95', 'Jacket', 'assets/Girl5.png'),
//     Product('US \$11.59', 'Wide Leg Trousers', 'assets/Girl6.png'),
//     Product('US \$43.95', 'Jacket', 'assets/Girl7.png'),
//     Product('US \$43.95', 'Jacket', 'assets/Boy3.png'),
//     Product('US \$43.95', 'Jacket', 'assets/Boy5.png'),
//     Product('US \$43.95', 'Jacket', 'assets/Boy1.png'),

//     // Add more products as needed
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor:
//           Color.fromARGB(255, 34, 40, 49), // Updated background color
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(255, 34, 40, 49),
//         title: TextField(
//           style: TextStyle(color: Colors.white),
//           decoration: InputDecoration(
//             hintText: 'Search...',
//             hintStyle: TextStyle(color: Colors.grey),
//             border: InputBorder.none,
//             icon: Icon(Icons.search, color: Colors.grey),

//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: GridView.builder(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 3, // Display 4 items per row
//             childAspectRatio: 0.7, // 1:1 aspect ratio
//             crossAxisSpacing: 10,
//             mainAxisSpacing: 10,
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
//     return Container(
//       width: 100,
//       height: 100,
//       decoration: BoxDecoration(
//           // color: Colors.grey[900],
//           // borderRadius: BorderRadius.circular(16.0),
//           ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             width: 120,
//             height: 120,
//             decoration: BoxDecoration(
//               // borderRadius: BorderRadius.circular(16.0),
//               image: DecorationImage(
//                 image: AssetImage(product.imageUrl),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(4.0),
//             child: Text(
//               product.price,
//               style: TextStyle(color: Colors.white, fontSize: 10),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 4.0),
//             child: Text(
//               product.title,
//               style: TextStyle(color: Colors.white, fontSize: 10),
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final List<Product> products = [
    Product('US \$13.95', 'T-Shirt With Print', 'assets/Boy1.png'),
    Product('US \$23.95', 'Hoodie', 'assets/Boy2.png'),
    Product('US \$33.95', 'Jeans', 'assets/Boy3.png'),
    Product('US \$43.95', 'Jacket', 'assets/Boy4.png'),
    Product('US \$43.95', 'Jacket', 'assets/Boy5.png'),
    Product('US \$43.95', 'Jacket', 'assets/Boy6.png'),
    Product('US \$43.95', 'Jacket', 'assets/Girl1.png'),
    Product('US \$17.99', 'Cropped Jacket', 'assets/Girl2.png'),
    Product('US \$8.34', 'Hooded Jackets', 'assets/Girl3.png'),
    Product('US \$11.59', 'Croped T-Shirt', 'assets/Girl4.png'),
    Product('US \$43.95', 'Jacket', 'assets/Girl5.png'),
    Product('US \$11.59', 'Wide Leg Trousers', 'assets/Girl6.png'),
    Product('US \$43.95', 'Jacket', 'assets/Girl7.png'),
    Product('US \$43.95', 'Jacket', 'assets/Boy3.png'),
    Product('US \$43.95', 'Jacket', 'assets/Boy5.png'),
    Product('US \$43.95', 'Jacket', 'assets/Boy1.png'),
    // Add more products as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color.fromARGB(255, 34, 40, 49), // Updated background color
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 34, 40, 49),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,
              color: const Color.fromARGB(
                  255, 203, 203, 203)), // Updated color to white
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: TextField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(color: Colors.grey),
            border: InputBorder.none,
            icon: Icon(Icons.search, color: Colors.grey),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Display 3 items per row
            childAspectRatio: 0.7, // 1:1 aspect ratio
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
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
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          // color: Colors.grey[900],
          // borderRadius: BorderRadius.circular(16.0),
          ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(16.0),
              image: DecorationImage(
                image: AssetImage(product.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              product.price,
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Text(
              product.title,
              style: TextStyle(color: Colors.white, fontSize: 10),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
