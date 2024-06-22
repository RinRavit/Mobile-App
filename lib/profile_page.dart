// import 'package:flutter/material.dart';

// class ProfilePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(
//           255, 34, 40, 49), // Background color to match the design
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(255, 34, 40, 49),
//         title: Text(
//           'Profile',
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
//         child: Column(
//           children: [
//             CircleAvatar(
//               radius: 50,
//               backgroundImage:
//                   AssetImage('assets/Boy1.png'), // Replace with your image URL
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Rin Ravit',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 20),
//             ListTile(
//               leading: Icon(Icons.shopping_cart, color: Colors.white),
//               title: Text('My order', style: TextStyle(color: Colors.white)),
//               onTap: () {
//                 // Handle My order tap
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.history, color: Colors.white),
//               title: Text('History', style: TextStyle(color: Colors.white)),
//               onTap: () {
//                 // Handle History tap
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.card_giftcard, color: Colors.white),
//               title: Text('Coupon', style: TextStyle(color: Colors.white)),
//               onTap: () {
//                 // Handle Coupon tap
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.logout, color: Colors.white),
//               title: Text('Logout', style: TextStyle(color: Colors.white)),
//               onTap: () {
//                 Navigator.pushNamed(context, '/login');
//                 // Handle Coupon tap
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(
          255, 34, 40, 49), // Background color to match the design
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 34, 40, 49),
        title: Text(
          'Profile',
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
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage:
                  AssetImage('assets/Boy1.png'), // Replace with your image URL
            ),
            SizedBox(height: 10),
            Text(
              'Rin Ravit',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.shopping_cart, color: Colors.white),
              title: Text('My order', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pushNamed(context, '/order');
              },
            ),
            ListTile(
              leading: Icon(Icons.history, color: Colors.white),
              title: Text('History', style: TextStyle(color: Colors.white)),
              onTap: () {
                // Handle History tap
              },
            ),
            ListTile(
              leading: Icon(Icons.card_giftcard, color: Colors.white),
              title: Text('Coupon', style: TextStyle(color: Colors.white)),
              onTap: () {
                // Handle Coupon tap
              },
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.white),
              title: Text('Logout', style: TextStyle(color: Colors.white)),
              onTap: () {
                _showLogoutDialog(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Confirm Logout"),
          content: Text("Do you want to logout?"),
          actions: [
            TextButton(
              child: Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text("Ok"),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
                Navigator.pushNamed(
                    context, '/login'); // Navigate to login page
              },
            ),
          ],
        );
      },
    );
  }
}
