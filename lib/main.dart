import 'package:flutter/material.dart';

void main() {
  runApp(const MenuApp());
}

class MenuApp extends StatelessWidget {
  const MenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cafe Menu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.brown),
      home: const MenuHomeScreen(),
    );
  }
}

class MenuHomeScreen extends StatelessWidget {
  const MenuHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cozy Corner Cafe Menu'),
        centerTitle: true,
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          MenuItemCard(
            itemName: 'Caramel Macchiato',
            itemPrice: '\$4.50',
            itemDescription: 'Espresso with vanilla syrup, steamed milk, and caramel drizzle.',
            iconData: Icons.coffee,
          ),
          SizedBox(height: 12),
          MenuItemCard(
            itemName: 'Artisan Croissant',
            itemPrice: '\$3.00',
            itemDescription: 'Freshly baked buttery, flaky French croissant.',
            iconData: Icons.bakery_dining,
          ),
          SizedBox(height: 12),
          MenuItemCard(
            itemName: 'Iced Matcha Latte',
            itemPrice: '\$5.00',
            itemDescription:
                'Ceremonial grade matcha whisked with cold oat milk.',
            iconData: Icons.local_cafe,
          ),
        ],
      ),
    );
  }
}

class MenuItemCard extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String itemDescription;
  final IconData iconData;

  const MenuItemCard({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.itemDescription,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.brown[50],
              ),
              child: Center(
                child: Icon(iconData, size: 40, color: Colors.brown),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        itemName,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        itemPrice,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.brown,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    itemDescription,
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
