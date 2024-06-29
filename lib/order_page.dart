// import 'package:flutter/material.dart';

// class OrderPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(
//           255, 34, 40, 49), // Background color to match the design
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(255, 34, 40, 49),
//         title: Text(
//           'My orders',
//           style: TextStyle(
//             color: Color.fromARGB(255, 214, 214, 214),
//           ),
//         ),
//         leading: IconButton(
//           icon: Icon(
//             Icons.arrow_back,
//             color: Color.fromARGB(255, 214, 214, 214),
//           ),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//       body: ListView(
//         padding: EdgeInsets.all(16.0),
//         children: [
//           OrderItem(
//             orderId: '#230609361',
//             orderDate: '09/06/2023',
//             price: '\$17.04',
//             status: 'Shipped 10/06/2023',
//             quantity: 'Quantity 3',
//             images: [
//               'assets/Boy4.png',
//               'assets/Girl3.png',
//               'assets/Girl5.png',
//             ],
//           ),
//           OrderItem(
//             orderId: '#230411253',
//             orderDate: '11/04/2023',
//             price: '\$27.48',
//             status: 'Delivered 20/04/2023',
//             quantity: 'Quantity 3',
//             images: [
//               'assets/Boy1.png',
//               'assets/Boy4.png',
//               'assets/Boy6.png',
//             ],
//           ),
//           // Add more orders as needed
//         ],
//       ),
//     );
//   }
// }

// class OrderItem extends StatelessWidget {
//   final String orderId;
//   final String orderDate;
//   final String price;
//   final String status;
//   final String quantity;
//   final List<String> images;

//   OrderItem({
//     required this.orderId,
//     required this.orderDate,
//     required this.price,
//     required this.status,
//     required this.quantity,
//     required this.images,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: Color.fromARGB(255, 45, 52, 61),
//       margin: EdgeInsets.symmetric(vertical: 8.0),
//       child: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(orderId, style: TextStyle(color: Colors.white)),
//             SizedBox(height: 5),
//             Text('Delivered $orderDate', style: TextStyle(color: Colors.grey)),
//             SizedBox(height: 5),
//             Text(status, style: TextStyle(color: Colors.grey)),
//             SizedBox(height: 5),
//             Text(quantity, style: TextStyle(color: Colors.grey)),
//             SizedBox(height: 10),
//             Row(
//               children: images.map((image) {
//                 return Padding(
//                   padding: const EdgeInsets.only(right: 8.0),
//                   child: Image.asset(image, width: 50, height: 50),
//                 );
//               }).toList(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(
          255, 34, 40, 49), // Background color to match the design
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 34, 40, 49),
        title: Text(
          'My orders',
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
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          OrderItem(
            orderId: '#230609361',
            orderDate: '09/06/2023',
            price: '\$17.04',
            status: 'Shipped 10/06/2023',
            quantity: 'Quantity 3',
            images: [
              'assets/Boy4.png',
              'assets/Girl3.png',
              'assets/Girl5.png',
            ],
          ),
          OrderItem(
            orderId: '#230411253',
            orderDate: '11/04/2023',
            price: '\$27.48',
            status: 'Delivered 20/04/2023',
            quantity: 'Quantity 3',
            images: [
              'assets/Boy1.png',
              'assets/Boy4.png',
              'assets/Boy6.png',
            ],
          ),
          // Add more orders as needed
        ],
      ),
    );
  }
}

class OrderItem extends StatelessWidget {
  final String orderId;
  final String orderDate;
  final String price;
  final String status;
  final String quantity;
  final List<String> images;

  OrderItem({
    required this.orderId,
    required this.orderDate,
    required this.price,
    required this.status,
    required this.quantity,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 45, 52, 61),
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(orderId, style: TextStyle(color: Colors.grey)),
            SizedBox(height: 5),
            Text('Delivered $orderDate', style: TextStyle(color: Colors.grey)),
            SizedBox(height: 5),
            Text(status, style: TextStyle(color: Colors.grey)),
            SizedBox(height: 5),
            Text(quantity, style: TextStyle(color: Colors.grey)),
            SizedBox(height: 5),
            Text('Price: $price',
                style: TextStyle(color: Colors.grey)), // Added price text
            SizedBox(height: 10),
            Row(
              children: images.map((image) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.asset(image, width: 50, height: 50),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
