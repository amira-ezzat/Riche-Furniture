import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_1/product/ProductData/dataDetails_model.dart';
import 'package:project_1/settings/Bar.dart';

import '../ProductData/data_screen.dart';
import '../ProductDetails/details_model.dart';

class FurnitureCategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.all(8.w),
        child: GridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: 10.w,
          mainAxisSpacing: 10.h,
          childAspectRatio: 0.75,
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
              title: ' ترابيزات\n',
              image: 'https://www.kabbanifurniture.com/cdn/shop/files/12_8f31669d-3826-4032-ae5f-865861c10c85_1800x1800.jpg?v=1720947645',
              products: tablesProducts, // Pass dining products
            ),
            FurnitureCard(
              title: 'حافظات احذية',
              image: 'https://www.kabbanifurniture.com/cdn/shop/products/KSH-601_1800x1800.jpg?v=1679052425',
              products: tableshoosProducts, // Pass dining products
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
      child: SizedBox(
        height: 150.h,
        child: Card(
          color: Colors.white,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10.r)),
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                  height: 280.h,
                  width: double.infinity,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.w),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontFamily: 'arb',
                        fontSize: 6.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF964B00),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    width: 22.w,
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
                            fontFamily: 'arb'

                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

