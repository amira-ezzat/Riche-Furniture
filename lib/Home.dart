import 'package:carousel_slider/carousel_slider.dart' as carousel_slider; // اسم مستعار للمكتبة
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_1/settings/Bar.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  final List<String> imgList = [
    'https://www.kabbanifurniture.com/cdn/shop/files/1_53eaf698-fb62-4092-bb0c-46f3c049357f_1800x1800.jpg?v=1721811554',
    'https://www.kabbanifurniture.com/cdn/shop/products/tokyo-master_1800x1800.jpg?v=1647010896',
    'https://www.kabbanifurniture.com/cdn/shop/files/1_adc9ca0e-4a9a-4fc3-9789-ec3ef9216f9e_1800x1800.jpg?v=1710240473',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            carousel_slider.CarouselSlider(
              options: carousel_slider.CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
              ),
              items: imgList.map((item) => Container(
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(item),
                    fit: BoxFit.cover,
                  ),
                ),
              )).toList(),
            ),
            SizedBox(height: 200.h),
            Container(
            //  color: Color(0xFF964B00),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'خصومات',
                          style: TextStyle(
                              fontFamily: 'arb',
                              fontSize: 8.sp,
                              fontWeight: FontWeight.bold
                          ),
                          textDirection: TextDirection.rtl,
                        ),
                        SizedBox(height: 11),
                        Text(
                          'خصم يصل إلى 30% على جميع المنتجات\n'
                              'صالحة حتى 31 سبتمبر 2024.',
                          style: TextStyle(
                              fontFamily: 'arb',
                              fontSize: 5.sp,
                              color: Colors.grey.shade700
                          ),
                          textDirection: TextDirection.rtl,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'مواعيد العمل',
                          style: TextStyle(
                              fontFamily: 'arb',
                              fontSize: 8.sp,
                              fontWeight: FontWeight.bold
                          ),
                          textDirection: TextDirection.rtl,
                        ),
                        SizedBox(height: 11),
                        Text(
                          'السبت - الخميس:'
                              '\n09:00 صباحًا-08:00 مساءً'
                              '\nالجمعة: عطلة',
                          style: TextStyle(
                              fontFamily: 'arb',
                              fontSize: 5.sp,
                              color: Colors.grey.shade700
                          ),
                          textDirection: TextDirection.rtl,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'شاركنا وتواصل معنا عبر صفحاتنا \n'
                              'على وسائل التواصل الاجتماعي',
                          style: TextStyle(
                              fontFamily: 'arb',
                              fontSize: 8.sp,
                              fontWeight: FontWeight.bold
                          ),
                          textDirection: TextDirection.rtl,
                        ),
                        SizedBox(height: 11),
                        Wrap(
                          spacing: 8.0,
                          runSpacing: 4.0,
                          children: [
                            IconButton(
                              onPressed: () {
                                launch('https://www.instagram.com/riche.furniture?igsh=aGxjZDN3cjNlanE0');
                              },
                              icon: FaIcon(
                                FontAwesomeIcons.instagram,
                                size: 30.0,
                                color: Colors.pinkAccent,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                launch('https://www.facebook.com/blacknaig?mibextid=LQQJ4d');
                              },
                              icon: Icon(
                                Icons.facebook,
                                size: 30.0,
                                color: Colors.blue,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                launch('https://wa.me/01007356351');
                              },
                              icon: FaIcon(
                                FontAwesomeIcons.whatsapp,
                                size: 30.0,
                                color: Colors.green,
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
            SizedBox(height: 222.h),
          ],
        ),
      ),
    );
  }
}
