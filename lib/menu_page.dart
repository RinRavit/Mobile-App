// import 'package:flutter/material.dart';

// class MenuPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(255, 34, 40, 49),
//         leading: IconButton(
//           icon: Icon(Icons.close),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//       body: ListView(
//         padding: const EdgeInsets.all(16.0),
//         children: [
//           buildExpansionTile('WOMEN',
//           onTap: () {
//                 Navigator.pushNamed(context, '/men');
//               },

//           [
//             'NEW IN',
//             'CLOTHING',
//             'SHOES',
//             'ACCESSORIES',
//             'RIDER COLLECTION',
//             'DENIM',
//             'SALE 15% TO 30%',
//             'SALE 40% TO 70%',
//             'SALE',
//           ]),
//           buildExpansionTile('MEN', [
//             'NEW IN',
//             'CLOTHING',
//             'SHOES',
//             'ACCESSORIES',
//             'RIDER COLLECTION',
//             'DENIM',
//             'SALE 15% TO 30%',
//             'SALE 40% TO 70%',
//             'SALE',
//           ]),
//           buildExpansionTile('BOY', [
//             'NEW IN',
//             'CLOTHING',
//             'SHOES',
//             'ACCESSORIES',
//             'RIDER COLLECTION',
//             'DENIM',
//             'SALE 15% TO 30%',
//             'SALE 40% TO 70%',
//             'SALE',
//           ]),
//           buildExpansionTile('GIRL', [
//             'NEW IN',
//             'CLOTHING',
//             'SHOES',
//             'ACCESSORIES',
//             'RIDER COLLECTION',
//             'DENIM',
//             'SALE 15% TO 30%',
//             'SALE 40% TO 70%',
//             'SALE',
//           ]),
//           // buildMenuItem('BOYS', Colors.white),
//           // buildMenuItem('GIRLS', Colors.white),
//         ],
//       ),
//     );
//   }

//   Widget buildExpansionTile(String title, List<String> children) {
//     return ExpansionTile(
//       title: Text(
//         title,
//         style: TextStyle(
//           color: Colors.white,
//           fontSize: 24,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       children: children
//           .map((child) => ListTile(
//                 title: Text(
//                   child,
//                   style: TextStyle(
//                     color: child.contains('SALE') ? Colors.pink : Colors.white,
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ))
//           .toList(),
//     );
//   }

//   Widget buildMenuItem(String title, Color color) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10.0),
//       child: Text(
//         title,
//         style: TextStyle(
//           color: color,
//           fontSize: 24,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 34, 40, 49),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 34, 40, 49),
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          buildExpansionTile(
            'WOMEN',
            [
              'NEW IN',
              'CLOTHING',
              'SHOES',
              'ACCESSORIES',
              'RIDER COLLECTION',
              'DENIM',
              'SALE 15% TO 30%',
              'SALE 40% TO 70%',
              'SALE',
            ],
            onTap: () {
              Navigator.pushNamed(context, '/women');
            },
          ),
          buildExpansionTile(
            'MEN',
            [
              'NEW IN',
              'CLOTHING',
              'SHOES',
              'ACCESSORIES',
              'RIDER COLLECTION',
              'DENIM',
              'SALE 15% TO 30%',
              'SALE 40% TO 70%',
              'SALE',
            ],
            onTap: () {
              Navigator.pushNamed(context, '/men');
            },
          ),
          buildExpansionTile(
            'BOY',
            [
              'NEW IN',
              'CLOTHING',
              'SHOES',
              'ACCESSORIES',
              'RIDER COLLECTION',
              'DENIM',
              'SALE 15% TO 30%',
              'SALE 40% TO 70%',
              'SALE',
            ],
            onTap: () {
              Navigator.pushNamed(context, '/boy');
            },
          ),
          buildExpansionTile(
            'GIRL',
            [
              'NEW IN',
              'CLOTHING',
              'SHOES',
              'ACCESSORIES',
              'RIDER COLLECTION',
              'DENIM',
              'SALE 15% TO 30%',
              'SALE 40% TO 70%',
              'SALE',
            ],
            onTap: () {
              Navigator.pushNamed(context, '/girl');
            },
          ),
        ],
      ),
    );
  }

  Widget buildExpansionTile(String title, List<String> children,
      {required VoidCallback onTap}) {
    return ExpansionTile(
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      children: children
          .map((child) => ListTile(
                title: Text(
                  child,
                  style: TextStyle(
                    color: child.contains('SALE') ? Colors.pink : Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: onTap,
              ))
          .toList(),
    );
  }

  Widget buildMenuItem(String title, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        title,
        style: TextStyle(
          color: color,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class MenuPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(
//           255, 34, 40, 49), // Background color to match the design
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(255, 34, 40, 49),
//         title: Text(
//           'Menu',
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
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: ListView(
//           children: [
//             MenuItem(
//               title: 'Men',
//               onTap: () {
//                 Navigator.pushNamed(context, '/men');
//               },
//             ),
//             MenuItem(
//               title: 'Women',
//               onTap: () {
//                 Navigator.pushNamed(context, '/women');
//               },
//             ),
//             // Add more menu items as needed
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MenuItem extends StatelessWidget {
//   final String title;
//   final VoidCallback onTap;

//   MenuItem({required this.title, required this.onTap});

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(
//         title,
//         style: TextStyle(color: Colors.white, fontSize: 20),
//       ),
//       onTap: onTap,
//     );
//   }
// }
