// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 34, 40, 49),
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(255, 34, 40, 49),
//         title: const Text(
//           'Hi Ravit!',
//           style: TextStyle(
//             color: Colors.grey,
//             fontSize: 20,
//           ),
//         ),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.notifications),
//             onPressed: () {},
//           ),
//           IconButton(
//             icon: const Icon(Icons.search),
//             onPressed: () {
//               Navigator.pushNamed(context, '/search');
//             },
//           ),
//           const CircleAvatar(
//             backgroundImage:
//                 AssetImage('assets/Boy1.png'), // Replace with your image URL
//           ),
//           const SizedBox(width: 10),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               BannerSection(),
//               const SizedBox(height: 20),
//               CategorySection(),
//               const SizedBox(height: 20),
//               TrendingSection(),
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: Container(
//         color: Colors
//             .black, // Ensure the container around the BottomNavigationBar is black
//         child: BottomNavigationBar(
//           backgroundColor: Colors.black,
//           selectedItemColor: Colors.amber,
//           unselectedItemColor: Colors.black,
//           onTap: (index) {
//             if (index == 1) {
//               Navigator.pushNamed(context, '/menu');
//             } else if (index == 2) {
//               Navigator.pushNamed(context, '/search');
//             } else if (index == 3) {
//               Navigator.pushNamed(context, '/wishlist');
//             } else if (index == 4) {
//               Navigator.pushNamed(context, '/profile');
//             }
//           },
//           items: const <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: 'Home',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.menu),
//               label: 'Menu',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.search),
//               label: 'Search',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.favorite_border),
//               label: 'Wish List',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.person),
//               label: 'Profile',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // ignore: use_key_in_widget_constructors
// class BannerSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 230,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(16.0),
//         image: const DecorationImage(
//           image: AssetImage(
//               'assets/background3.png'), // Replace with your banner image URL
//           fit: BoxFit.cover,
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
//         const Text(
//           'Category',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         const SizedBox(height: 10),
//         Wrap(
//           spacing: 10,
//           runSpacing: 10,
//           children: [
//             CategoryItem(imageUrl: 'assets/icon/grid.png', label: 'All'),
//             CategoryItem(imageUrl: 'assets/icon/shirt.png', label: 'Top'),
//             CategoryItem(imageUrl: 'assets/icon/pants2.png', label: 'Bottom'),
//             CategoryItem(imageUrl: 'assets/icon/shoes.png', label: 'Shoes'),
//             CategoryItem(imageUrl: 'assets/icon/dress.png', label: 'Dresses'),
//             CategoryItem(imageUrl: 'assets/icon/new.png', label: 'New in'),
//             CategoryItem(imageUrl: 'assets/icon/jacket.png', label: 'Jackets'),
//             CategoryItem(imageUrl: 'assets/icon/pants1.png', label: 'Denim'),
//             CategoryItem(
//                 imageUrl: 'assets/icon/straw-hat.png', label: 'Accessories'),
//             CategoryItem(imageUrl: 'assets/icon/coupon.png', label: '15%-70%'),
//           ],
//         ),
//       ],
//     );
//   }
// }

// class CategoryItem extends StatelessWidget {
//   final String imageUrl;
//   final String label;

//   CategoryItem({required this.imageUrl, required this.label});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         CircleAvatar(
//           backgroundColor: Colors.amber,
//           child: Image.asset(imageUrl, width: 24, height: 24),
//         ),
//         const SizedBox(height: 5),
//         Text(
//           label,
//           style: const TextStyle(color: Colors.white),
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
//         const Text(
//           'Now Trending!',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         const SizedBox(height: 10),
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
//       margin: const EdgeInsets.only(right: 10),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Stack(
//             children: [
//               Container(
//                 height: 150,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(16.0),
//                   image: const DecorationImage(
//                     image: AssetImage(
//                         'assets/Boy2.png'), // Replace with your item image URL
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 5),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               const Text(
//                 'US \$13.95',
//                 style: TextStyle(color: Colors.white),
//               ),
//               Icon(
//                 Icons.favorite_border,
//                 color: Colors.white,
//               ),
//             ],
//           ),
//           const Text(
//             'T-Shirt With Print',
//             style: TextStyle(color: Colors.white),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 34, 40, 49),
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(255, 34, 40, 49),
//         title: const Text(
//           'Hi Ravit!',
//           style: TextStyle(
//             color: Colors.grey,
//             fontSize: 20,
//           ),
//         ),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.notifications),
//             onPressed: () {},
//           ),
//           IconButton(
//             icon: Image.asset(
//                 'assets/icon/shopping-bag.png'), // Replace with your image URL
//             onPressed: () {
//               Navigator.pushNamed(context, '/order');
//             },
//           ),
//           const CircleAvatar(
//             backgroundImage:
//                 AssetImage('assets/Boy1.png'), // Replace with your image URL
//           ),
//           const SizedBox(width: 10),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               BannerSection(),
//               const SizedBox(height: 20),
//               CategorySection(),
//               const SizedBox(height: 20),
//               TrendingSection(),
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: Container(
//         color: Colors
//             .black, // Ensure the container around the BottomNavigationBar is black
//         child: BottomNavigationBar(
//           backgroundColor: Colors.black,
//           selectedItemColor: Colors.amber,
//           unselectedItemColor: Colors.black,
//           onTap: (index) {
//             if (index == 1) {
//               Navigator.pushNamed(context, '/menu');
//             } else if (index == 2) {
//               Navigator.pushNamed(context, '/search');
//             } else if (index == 3) {
//               Navigator.pushNamed(context, '/wishlist');
//             } else if (index == 4) {
//               Navigator.pushNamed(context, '/profile');
//             }
//           },
//           items: const <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: 'Home',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.menu),
//               label: 'Menu',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.search),
//               label: 'Search',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.favorite_border),
//               label: 'Wish List',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.person),
//               label: 'Profile',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // ignore: use_key_in_widget_constructors
// class BannerSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 230,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(16.0),
//         image: const DecorationImage(
//           image: AssetImage(
//               'assets/background3.png'), // Replace with your banner image URL
//           fit: BoxFit.cover,
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
//         const Text(
//           'Category',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         const SizedBox(height: 10),
//         Wrap(
//           spacing: 10,
//           runSpacing: 10,
//           children: [
//             CategoryItem(imageUrl: 'assets/icon/grid.png', label: 'All'),
//             CategoryItem(imageUrl: 'assets/icon/shirt.png', label: 'Top'),
//             CategoryItem(imageUrl: 'assets/icon/pants2.png', label: 'Bottom'),
//             CategoryItem(imageUrl: 'assets/icon/shoes.png', label: 'Shoes'),
//             CategoryItem(imageUrl: 'assets/icon/dress.png', label: 'Dresses'),
//             CategoryItem(imageUrl: 'assets/icon/new.png', label: 'New in'),
//             CategoryItem(imageUrl: 'assets/icon/jacket.png', label: 'Jackets'),
//             CategoryItem(imageUrl: 'assets/icon/pants1.png', label: 'Denim'),
//             CategoryItem(
//                 imageUrl: 'assets/icon/straw-hat.png', label: 'Accessories'),
//             CategoryItem(imageUrl: 'assets/icon/coupon.png', label: '15%-70%'),
//           ],
//         ),
//       ],
//     );
//   }
// }

// class CategoryItem extends StatelessWidget {
//   final String imageUrl;
//   final String label;

//   CategoryItem({required this.imageUrl, required this.label});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         CircleAvatar(
//           backgroundColor: Colors.amber,
//           child: Image.asset(imageUrl, width: 24, height: 24),
//         ),
//         const SizedBox(height: 5),
//         Text(
//           label,
//           style: const TextStyle(color: Colors.white),
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
//         const Text(
//           'Now Trending!',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         const SizedBox(height: 10),
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
//       margin: const EdgeInsets.only(right: 10),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Stack(
//             children: [
//               Container(
//                 height: 150,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(16.0),
//                   image: const DecorationImage(
//                     image: AssetImage(
//                         'assets/Boy2.png'), // Replace with your item image URL
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 5),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               const Text(
//                 'US \$13.95',
//                 style: TextStyle(color: Colors.white),
//               ),
//               Icon(
//                 Icons.favorite_border,
//                 color: Colors.white,
//               ),
//             ],
//           ),
//           const Text(
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
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 34, 40, 49),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 34, 40, 49),
        title: const Text(
          'Hi Ravit!',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
          IconButton(
            icon: SizedBox(
              width: 24, // Adjust the width to match the icon size
              height: 24, // Adjust the height to match the icon size
              child: Image.asset(
                  'assets/icon/shopping-bag.png'), // Replace with your image URL
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/order');
            },
          ),
          const CircleAvatar(
            backgroundImage:
                AssetImage('assets/Boy1.png'), // Replace with your image URL
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BannerSection(),
              const SizedBox(height: 20),
              CategorySection(),
              const SizedBox(height: 20),
              TrendingSection(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors
            .black, // Ensure the container around the BottomNavigationBar is black
        child: BottomNavigationBar(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.black,
          onTap: (index) {
            if (index == 1) {
              Navigator.pushNamed(context, '/menu');
            } else if (index == 2) {
              Navigator.pushNamed(context, '/search');
            } else if (index == 3) {
              Navigator.pushNamed(context, '/wishlist');
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
      ),
    );
  }
}

// ignore: use_key_in_widget_constructors
class BannerSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        image: const DecorationImage(
          image: AssetImage(
              'assets/background3.png'), // Replace with your banner image URL
          fit: BoxFit.cover,
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
        const Text(
          'Category',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            CategoryItem(imageUrl: 'assets/icon/grid.png', label: 'All'),
            CategoryItem(imageUrl: 'assets/icon/shirt.png', label: 'Top'),
            CategoryItem(imageUrl: 'assets/icon/pants2.png', label: 'Bottom'),
            CategoryItem(imageUrl: 'assets/icon/shoes.png', label: 'Shoes'),
            CategoryItem(imageUrl: 'assets/icon/dress.png', label: 'Dresses'),
            CategoryItem(imageUrl: 'assets/icon/new.png', label: 'New in'),
            CategoryItem(imageUrl: 'assets/icon/jacket.png', label: 'Jackets'),
            CategoryItem(imageUrl: 'assets/icon/pants1.png', label: 'Denim'),
            CategoryItem(
                imageUrl: 'assets/icon/straw-hat.png', label: 'Accessories'),
            CategoryItem(imageUrl: 'assets/icon/coupon.png', label: '15%-70%'),
          ],
        ),
      ],
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String imageUrl;
  final String label;

  CategoryItem({required this.imageUrl, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.amber,
          child: Image.asset(imageUrl, width: 24, height: 24),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(color: Colors.white),
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
        const Text(
          'Now Trending!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
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
      margin: const EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  image: const DecorationImage(
                    image: AssetImage(
                        'assets/Boy2.png'), // Replace with your item image URL
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'US \$13.95',
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.favorite_border,
                color: Colors.white,
              ),
            ],
          ),
          const Text(
            'T-Shirt With Print',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
