import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plant_app/widget/category_widget.dart';
import 'package:plant_app/widget/plant_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<Map<String, dynamic>> cards = [
    {
      'imagePath': 'assets/images/image2',
      'name': 'flowers',
      'description':
          'A beautiful flowering plant with vibrant colors and fragrant blooms.',
      'price': 20.0,
      'category': 'Indoor',
    },
    {
      'imagePath': 'assets/images/image1',
      'name': 'Cactus',
      'description':
          'A succulent plant with spines, known for its ability to thrive in arid conditions.',
      'price': 15.0,
      'category': 'Outdoor',
    },
    {
      'imagePath': 'assets/images/image3',
      'name': 'monstera',
      'description':
          'A tropical plant with large, split leaves, known for its unique appearance.',
      'price': 10.0,
      'category': 'Indoor',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const FaIcon(FontAwesomeIcons.bars, color: Colors.black),
          actions: [
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.cartShopping,
                  color: Colors.black),
              onPressed: () {},
            ),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Discover Plants',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                const SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Find your plant',
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: const Icon(FontAwesomeIcons.expand),
                      onPressed: () {},
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                ),
                const SizedBox(height: 20),
                const Text('Plant Categories',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                const SizedBox(height: 10),
                Container(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CategoryItem(
                        imagePath: 'assets/images/ficus.png',
                        label: 'Outdoor',
                        onTap: () {},
                      ),
                      const SizedBox(width: 20),
                      CategoryItem(
                        imagePath: 'assets/images/plant.png',
                        label: 'Indoor',
                        onTap: () {},
                      ),
                      const SizedBox(width: 20),
                      CategoryItem(
                        imagePath: 'assets/images/house.png',
                        label: 'Office',
                        onTap: () {},
                      ),
                      const SizedBox(width: 20),
                      CategoryItem(
                        imagePath: 'assets/images/menu.png',
                        label: 'Other',
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Text('Popular Plants',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                const SizedBox(height: 10),
                SizedBox(
                  height: 350,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: cards.length,
                    itemBuilder: (context, index) {
                      return PlantCard(
                        imagePath: cards[index]['imagePath'],
                        name: cards[index]['name'],
                        description: cards[index]['description'],
                        price: cards[index]['price'],
                        category: cards[index]['category'],
                        isFavorite: false,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
