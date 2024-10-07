import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../settings/Bar.dart';
import '../ProductData/dataDetails_model.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  ProductDetailScreen({required this.product});

  void _openWhatsApp(String phoneNumber) async {
    final whatsappUrl = 'https://wa.me/$phoneNumber';
    if (await canLaunch(whatsappUrl)) {
      await launch(whatsappUrl);
    } else {
      throw 'Could not launch $whatsappUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'arb',
                          fontSize: 6.sp,
                        ),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        '${product.newPrice.toStringAsFixed(2)} جنيه',
                        style: TextStyle(
                            fontFamily: 'arb',
                            color: Color(0xFF964B00),
                          fontWeight: FontWeight.bold,
                          fontSize: 8.sp,
                        ),
                        textDirection: TextDirection.rtl,
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF964B00),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        width: 150,
                        child: TextButton(
                          onPressed: () {
                            _openWhatsApp('201007356351');
                          },
                          child: Text(
                            'اشتري الان',
                            style: TextStyle(
                              fontFamily: 'arb',

                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 33.h),
                  if (product.imageUrl != null && product.imageUrl!.isNotEmpty)
                    Image.network(
                      product.imageUrl!,
                      height: 500.h,
                      width:200.w,
                      fit: BoxFit.cover,
                    )
                  else if (product.imageAsset != null && product.imageAsset!.isNotEmpty)
                    Image.asset(
                      product.imageAsset!,
                      height: 500.h,
                      width:200.w,
                      fit: BoxFit.cover,
                    )
                ],
              ),
              SizedBox(height: 15.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'الوصف: ',
                    style: TextStyle(
                      color: Color(0xFF964B00),
                      fontFamily: 'arb',
                      fontWeight: FontWeight.bold,
                      fontSize: 8.sp,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                  Text(
                    '${product.description}',
                    style: TextStyle(
                      fontFamily: 'arb',

                      fontSize: 6.sp,
                      color: Colors.black,
                    ),
                    textDirection: TextDirection.rtl,
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
