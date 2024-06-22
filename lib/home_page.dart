// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(221, 0, 0, 0),
//       appBar: AppBar(
//         backgroundColor: Color(0x00222831),
//         title: Text('Hi Ravit!'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.notifications),
//             onPressed: () {},
//           ),
//           CircleAvatar(
//             backgroundImage: NetworkImage(
//                 'https://via.placeholder.com/150'), // Replace with your image URL
//           ),
//           SizedBox(width: 10),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               BannerSection(),
//               SizedBox(height: 20),
//               CategorySection(),
//               SizedBox(height: 20),
//               TrendingSection(),
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.black87,
//         selectedItemColor: Colors.amber,
//         unselectedItemColor: Color.fromARGB(255, 0, 0, 0),
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.menu),
//             label: 'Menu',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite_border),
//             label: 'Wish List',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
// }

// class BannerSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 200,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(16.0),
//         image: DecorationImage(
//           image: NetworkImage(
//               'https://via.placeholder.com/400x200'), // Replace with your banner image URL
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: Center(
//         child: Text(
//           'NEW ARRIVALS\nSHOP NOW',
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CategorySection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Category',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         SizedBox(height: 10),
//         Wrap(
//           spacing: 10,
//           runSpacing: 10,
//           children: [
//             CategoryItem(icon: Icons.category, label: 'All'),
//             CategoryItem(icon: Icons.crop_3_2, label: 'Top'),
//             CategoryItem(icon: Icons.crop_7_5, label: 'Bottom'),
//             CategoryItem(icon: Icons.directions_run, label: 'Shoes'),
//             CategoryItem(icon: Icons.accessibility, label: 'Dresses'),
//             CategoryItem(icon: Icons.new_releases, label: 'New in'),
//             CategoryItem(icon: Icons.watch, label: 'Accessories'),
//             CategoryItem(icon: Icons.local_offer, label: '15%-70%'),
//           ],
//         ),
//       ],
//     );
//   }
// }

// class CategoryItem extends StatelessWidget {
//   final IconData icon;
//   final String label;

//   CategoryItem({required this.icon, required this.label});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         CircleAvatar(
//           backgroundColor: Colors.amber,
//           child: Icon(icon, color: Colors.white),
//         ),
//         SizedBox(height: 5),
//         Text(
//           label,
//           style: TextStyle(color: Colors.white),
//         ),
//       ],
//     );
//   }
// }

// class TrendingSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Now Trending!',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         SizedBox(height: 10),
//         Container(
//           height: 200,
//           child: ListView(
//             scrollDirection: Axis.horizontal,
//             children: [
//               TrendingItem(),
//               TrendingItem(),
//               TrendingItem(),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

// class TrendingItem extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 150,
//       margin: EdgeInsets.only(right: 10),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             height: 120,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(16.0),
//               image: DecorationImage(
//                 image: NetworkImage(
//                     'https://via.placeholder.com/150'), // Replace with your item image URL
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           SizedBox(height: 5),
//           Text(
//             'US \$13.95',
//             style: TextStyle(color: Colors.white),
//           ),
//           Text(
//             'T-Shirt With Print',
//             style: TextStyle(color: Colors.white),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'menu_page.dart';

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(255, 34, 40, 49),
//         title: Text(
//           'Hi Ravit!',
//           style: TextStyle(
//             color: Colors.white,
//           ),
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.notifications),
//             onPressed: () {},
//           ),
//           IconButton(
//             icon: Icon(Icons.notifications),
//             onPressed: () {},
//           ),
//           CircleAvatar(
//             backgroundImage: NetworkImage(
//                 'https://via.placeholder.com/150'), // Replace with your image URL
//           ),
//           SizedBox(width: 10),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               BannerSection(),
//               SizedBox(height: 20),
//               CategorySection(),
//               SizedBox(height: 20),
//               TrendingSection(),
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.black87,
//         selectedItemColor: Colors.amber,
//         unselectedItemColor: Colors.grey,
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.menu),
//             label: 'Menu',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite_border),
//             label: 'Wish List',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
// }

// class BannerSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 200,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(16.0),
//         image: DecorationImage(
//           image: NetworkImage(
//               'https://via.placeholder.com/400x200'), // Replace with your banner image URL
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: Center(
//         child: Text(
//           'NEW ARRIVALS\nSHOP NOW',
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CategorySection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Category',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         SizedBox(height: 10),
//         Wrap(
//           spacing: 10,
//           runSpacing: 10,
//           children: [
//             CategoryItem(icon: Icons.category, label: 'All'),
//             CategoryItem(icon: Icons.crop_3_2, label: 'Top'),
//             CategoryItem(icon: Icons.crop_7_5, label: 'Bottom'),
//             CategoryItem(icon: Icons.directions_run, label: 'Shoes'),
//             CategoryItem(icon: Icons.accessibility, label: 'Dresses'),
//             CategoryItem(icon: Icons.new_releases, label: 'New in'),
//             CategoryItem(icon: Icons.watch, label: 'Accessories'),
//             CategoryItem(icon: Icons.local_offer, label: '15%-70%'),
//           ],
//         ),
//       ],
//     );
//   }
// }

// class CategoryItem extends StatelessWidget {
//   final IconData icon;
//   final String label;

//   CategoryItem({required this.icon, required this.label});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         CircleAvatar(
//           backgroundColor: Colors.amber,
//           child: Icon(icon, color: Colors.white),
//         ),
//         SizedBox(height: 5),
//         Text(
//           label,
//           style: TextStyle(color: Colors.white),
//         ),
//       ],
//     );
//   }
// }

// class TrendingSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Now Trending!',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         SizedBox(height: 10),
//         Container(
//           height: 200,
//           child: ListView(
//             scrollDirection: Axis.horizontal,
//             children: [
//               TrendingItem(),
//               TrendingItem(),
//               TrendingItem(),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

// class TrendingItem extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 150,
//       margin: EdgeInsets.only(right: 10),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             height: 120,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(16.0),
//               image: DecorationImage(
//                 image: NetworkImage(
//                     'https://via.placeholder.com/150'), // Replace with your item image URL
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           SizedBox(height: 5),
//           Text(
//             'US \$13.95',
//             style: TextStyle(color: Colors.white),
//           ),
//           Text(
//             'T-Shirt With Print',
//             style: TextStyle(color: Colors.white),
//           ),
//         ],
//       ),
//     );
//   }
// }

// menu

// import 'package:flutter/material.dart';
// import 'menu_page.dart';

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(255, 34, 40, 49),
//         title: Text(
//           'Hi Ravit!',
//           style: TextStyle(
//             color: Colors.white,
//           ),
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.notifications),
//             onPressed: () {},
//           ),
//           IconButton(
//             icon: Icon(Icons.notifications),
//             onPressed: () {},
//           ),
//           CircleAvatar(
//             backgroundImage: NetworkImage(
//                 'https://via.placeholder.com/150'), // Replace with your image URL
//           ),
//           SizedBox(width: 10),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               BannerSection(),
//               SizedBox(height: 20),
//               CategorySection(),
//               SizedBox(height: 20),
//               TrendingSection(),
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.black87,
//         selectedItemColor: Colors.amber,
//         unselectedItemColor: Colors.grey,
//         onTap: (index) {
//           if (index == 1) {
//             Navigator.pushNamed(context, '/menu');
//           }
//           // Add other navigations for different indexes here if needed
//         },
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.menu),
//             label: 'Menu',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite_border),
//             label: 'Wish List',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
// }

// class BannerSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 200,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(16.0),
//         image: DecorationImage(
//           image: NetworkImage(
//               'https://via.placeholder.com/400x200'), // Replace with your banner image URL
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: Center(
//         child: Text(
//           'NEW ARRIVALS\nSHOP NOW',
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CategorySection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Category',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         SizedBox(height: 10),
//         Wrap(
//           spacing: 10,
//           runSpacing: 10,
//           children: [
//             CategoryItem(icon: Icons.category, label: 'All'),
//             CategoryItem(icon: Icons.crop_3_2, label: 'Top'),
//             CategoryItem(icon: Icons.crop_7_5, label: 'Bottom'),
//             CategoryItem(icon: Icons.directions_run, label: 'Shoes'),
//             CategoryItem(icon: Icons.accessibility, label: 'Dresses'),
//             CategoryItem(icon: Icons.new_releases, label: 'New in'),
//             CategoryItem(icon: Icons.watch, label: 'Accessories'),
//             CategoryItem(icon: Icons.local_offer, label: '15%-70%'),
//           ],
//         ),
//       ],
//     );
//   }
// }

// class CategoryItem extends StatelessWidget {
//   final IconData icon;
//   final String label;

//   CategoryItem({required this.icon, required this.label});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         CircleAvatar(
//           backgroundColor: Colors.amber,
//           child: Icon(icon, color: Colors.white),
//         ),
//         SizedBox(height: 5),
//         Text(
//           label,
//           style: TextStyle(color: Colors.white),
//         ),
//       ],
//     );
//   }
// }

// class TrendingSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Now Trending!',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         SizedBox(height: 10),
//         Container(
//           height: 200,
//           child: ListView(
//             scrollDirection: Axis.horizontal,
//             children: [
//               TrendingItem(),
//               TrendingItem(),
//               TrendingItem(),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

// class TrendingItem extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 150,
//       margin: EdgeInsets.only(right: 10),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             height: 120,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(16.0),
//               image: DecorationImage(
//                 image: NetworkImage(
//                     'https://via.placeholder.com/150'), // Replace with your item image URL
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           SizedBox(height: 5),
//           Text(
//             'US \$13.95',
//             style: TextStyle(color: Colors.white),
//           ),
//           Text(
//             'T-Shirt With Print',
//             style: TextStyle(color: Colors.white),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 34, 40, 49),
      // backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 34, 40, 49),
        title: Text(
          'Hi Ravit!',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.pushNamed(context, '/search');
            },
          ),
          CircleAvatar(
            backgroundImage:
                AssetImage('assets/Boy1.png'), // Replace with your image URL
          ),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BannerSection(),
              SizedBox(height: 20),
              CategorySection(),
              SizedBox(height: 20),
              TrendingSection(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black87,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          if (index == 1) {
            Navigator.pushNamed(context, '/menu');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/search');
          } else if (index == 3) {
            Navigator.pushNamed(context, '/');
          } else if (index == 4) {
            Navigator.pushNamed(context, '/profile');
          }
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Wish List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class BannerSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        image: DecorationImage(
          image: NetworkImage(
              'https://via.placeholder.com/400x200'), // Replace with your banner image URL
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Text(
          'NEW ARRIVALS\nSHOP NOW',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class CategorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Category',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            CategoryItem(icon: Icons.category, label: 'All'),
            CategoryItem(icon: Icons.crop_3_2, label: 'Top'),
            CategoryItem(icon: Icons.crop_7_5, label: 'Bottom'),
            CategoryItem(icon: Icons.directions_run, label: 'Shoes'),
            CategoryItem(icon: Icons.accessibility, label: 'Dresses'),
            CategoryItem(icon: Icons.new_releases, label: 'New in'),
            CategoryItem(icon: Icons.watch, label: 'Accessories'),
            CategoryItem(icon: Icons.local_offer, label: '15%-70%'),
          ],
        ),
      ],
    );
  }
}

class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String label;

  CategoryItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.amber,
          child: Icon(icon, color: Colors.white),
        ),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}

class TrendingSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Now Trending!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              TrendingItem(),
              TrendingItem(),
              TrendingItem(),
            ],
          ),
        ),
      ],
    );
  }
}

class TrendingItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              image: DecorationImage(
                image: NetworkImage(
                    'https://via.placeholder.com/150'), // Replace with your item image URL
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            'US \$13.95',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            'T-Shirt With Print',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
