import 'package:flutter/material.dart';

class WishlistPage extends StatelessWidget {
  final List<WishlistItem> wishlistItems = [
    WishlistItem(
      price: 'US \$8.34',
      title: 'Hooded Jackets',
      imageUrl: 'assets/Girl3.png',
    ),
    WishlistItem(
      price: 'US \$12.99',
      title: 'Casual Shirt',
      imageUrl: 'assets/Boy1.png',
    ),
    WishlistItem(
      price: 'US \$5.99',
      title: 'Summer Dress',
      imageUrl: 'assets/Girl2.png',
    ),
    WishlistItem(
      price: 'US \$9.99',
      title: 'Denim Jeans',
      imageUrl: 'assets/Boy3.png',
    ),
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
          255, 34, 40, 49), // Background color to match the design
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 34, 40, 49),
        title: const Text(
          'Wishlist',
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
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Display 2 items per row
            childAspectRatio: 0.75, // Adjust the aspect ratio as needed
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemCount: wishlistItems.length,
          itemBuilder: (context, index) {
            return WishlistItemCard(item: wishlistItems[index]);
          },
        ),
      ),
    );
  }
}

class WishlistItem {
  final String price;
  final String title;
  final String imageUrl;

  WishlistItem({
    required this.price,
    required this.title,
    required this.imageUrl,
  });
}

class WishlistItemCard extends StatelessWidget {
  final WishlistItem item;

  WishlistItemCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 45, 52, 61),
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              item.imageUrl,
              width: double.infinity,
              height: 180,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.price,
                  style: const TextStyle(color: Colors.white),
                ),
                const Align(
                  alignment: Alignment.bottomRight,
                  child: Icon(Icons.favorite, color: Colors.red),
                ),
              ],
            ),
            Text(
              item.title,
              style: const TextStyle(color: Colors.white),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
