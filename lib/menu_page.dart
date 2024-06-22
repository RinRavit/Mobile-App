import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 34, 40, 49),
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          buildExpansionTile('WOMEN', [
            'NEW IN',
            'CLOTHING',
            'SHOES',
            'ACCESSORIES',
            'RIDER COLLECTION',
            'DENIM',
            'SALE 15% TO 30%',
            'SALE 40% TO 70%',
            'SALE',
          ]),
          buildExpansionTile('MEN', [
            'NEW IN',
            'CLOTHING',
            'SHOES',
            'ACCESSORIES',
            'RIDER COLLECTION',
            'DENIM',
            'SALE 15% TO 30%',
            'SALE 40% TO 70%',
            'SALE',
          ]),
          buildExpansionTile('BOY', [
            'NEW IN',
            'CLOTHING',
            'SHOES',
            'ACCESSORIES',
            'RIDER COLLECTION',
            'DENIM',
            'SALE 15% TO 30%',
            'SALE 40% TO 70%',
            'SALE',
          ]),
          buildExpansionTile('GIRL', [
            'NEW IN',
            'CLOTHING',
            'SHOES',
            'ACCESSORIES',
            'RIDER COLLECTION',
            'DENIM',
            'SALE 15% TO 30%',
            'SALE 40% TO 70%',
            'SALE',
          ]),
          // buildMenuItem('BOYS', Colors.white),
          // buildMenuItem('GIRLS', Colors.white),
        ],
      ),
    );
  }

  Widget buildExpansionTile(String title, List<String> children) {
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
