import 'package:flutter/material.dart';
import 'package:project_1/product/ProductData/dataDetails_model.dart';
import 'package:project_1/settings/Bar.dart';

import '../ProductData/data_screen.dart';
import '../ProductDetails/details_model.dart';

class FurnitureCategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    int crossAxisCount;
    if (screenWidth > 1200) {
      crossAxisCount = 4;
    } else if (screenWidth > 800) {
      crossAxisCount = 3;
    } else if (screenWidth > 600) {
      crossAxisCount = 2;
    } else {
      crossAxisCount = 1;
    }

    var crossAxisSpacing = screenWidth * 0.02;
    var mainAxisSpacing = screenHeight * 0.02;
   // var aspectRatio = screenHeight / screenWidth * 1.8;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.all(screenWidth * 0.02),
        child: GridView.count(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: crossAxisSpacing,
          mainAxisSpacing: mainAxisSpacing,
          childAspectRatio: 0.8,
          children: [
            FurnitureCard(
              title: 'غرف نوم',
              image: 'https://www.kabbanifurniture.com/cdn/shop/products/7_553bc7c7-c88c-4731-a5ce-5edd6a8836fc_1800x1800.jpg?v=1681810320',
              products: bedroomProducts, // Pass bedroom products
            ),
            FurnitureCard(
              title: 'غرف أطفال',
              image: 'https://www.kabbanifurniture.com/cdn/shop/products/yarn_1800x1800.jpg?v=1620806955',
              products: kidsRoomProducts, // Pass kids room products
            ),
            FurnitureCard(
              title: 'غرف السفرة',
              image: 'https://www.kabbanifurniture.com/cdn/shop/products/Table-With-6-Chairs_44f679fd-6965-436e-8bd7-12dfa98f3394_1800x1800.jpg?v=1655217161',
              products: diningProducts, // Pass dining products
            ),
            FurnitureCard(
              title: 'غرف المعيشة',
              image: 'https://www.kabbanifurniture.com/cdn/shop/files/3_1_0cf725ea-a702-4ec5-8b1f-5f686cb9fa39_1800x1800.jpg?v=1716815882',
              products: livingroomProducts, // Pass dining products
            ),
            FurnitureCard(
              title: 'ترابيزات',
              image: 'https://www.kabbanifurniture.com/cdn/shop/files/12_8f31669d-3826-4032-ae5f-865861c10c85_1800x1800.jpg?v=1720947645',
              products: tablesProducts, // Pass dining products
            ),
            FurnitureCard(
              title: 'حافظات احذية',
              image: 'https://www.kabbanifurniture.com/cdn/shop/products/KSH-601_1800x1800.jpg?v=1679052425',
              products: tableshoosProducts, // Pass dining products
            ),
            FurnitureCard(
              title: 'مطابخ',
              image: 'https://cdn.salla.sa/XXlKq/12071c85-909c-484f-aeaf-abb9a8ad1dcf-1000x718.87966804979-lJAq0TSRdbMlAc1lWc7aNoh4bdwLywzpmcMxeiFc.png',
              products: kitchenProducts, // Pass dining products
            ),
            // Add more categories...
          ],
        ),
      ),
    );
  }
}

class FurnitureCard extends StatelessWidget {
  final String title;
  final String image;
  final List<Product> products;

  FurnitureCard({
    required this.title,
    required this.image,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductGridScreen(
              products: products,
              title: title,
            ),
          ),
        );
      },
      child: AspectRatio(
        aspectRatio: 2.0,
        child: Card(
          color: Colors.white,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(screenWidth * 0.01),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(screenWidth * 0.01)),
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                  height: screenHeight * 0.4,
                  width: double.infinity,
                ),
              ),
              SizedBox(height: screenHeight *0.01,),
              Padding(
                padding: EdgeInsets.all(screenWidth * 0.01),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontFamily: 'arb',
                        fontSize: screenWidth * 0.02,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.02),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF964B00),
                        borderRadius: BorderRadius.circular(screenWidth * 0.005),
                      ),
                      width: screenWidth * 0.07,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductGridScreen(
                                products: products,
                                title: title,
                              ),
                            ),
                          );
                        },
                        child: Text(
                          'المزيد',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'arb',
                            fontSize: screenWidth * 0.01,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

