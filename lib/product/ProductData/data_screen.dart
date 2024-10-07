import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_1/settings/Bar.dart';

import '../ProductDetails/details_screen.dart';
import 'dataDetails_model.dart';

class ProductGridScreen extends StatelessWidget {
  final List<Product> products;
  final String title;

  ProductGridScreen({required this.products, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:CustomAppBar(),
      body: GridView.builder(
        padding: EdgeInsets.all(10.w),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10.w,
          mainAxisSpacing: 10.h,
          childAspectRatio: 0.75,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductCard(product: products[index]);
        },
      ),
    );
  }
}
class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: Card(
        color: Colors.white,
        elevation: 4,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (product.imageUrl != null && product.imageUrl!.isNotEmpty)
                Image.network(
                  product.imageUrl!,
                  height: 280.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )
              else if (product.imageAsset != null && product.imageAsset!.isNotEmpty)
                Image.asset(
                  product.imageAsset!,
                  height: 280.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              Padding(
                padding: EdgeInsets.all(8.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 6.sp,
                        fontFamily: 'arb'
                      ),
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                    ),
                    SizedBox(height: 4.h),
                    Row(
                      children: [
                        Text(
                          '${product.newPrice.toStringAsFixed(3)} جنية',
                          style: TextStyle(
                            color: Color(0xFF964B00),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'arb',
                            fontSize: 5.sp,
                          ),
                          textDirection: TextDirection.rtl,
                        ),
                        Spacer(),
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
                                  builder: (context) => ProductDetailScreen(product: product), // تمرير المنتج الحالي
                                ),
                              );
                            },
                            child: Text(
                              'تفاصيل',
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
            ],
          ),
        ),
      ),
    );
  }
}

