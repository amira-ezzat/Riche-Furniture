import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_1/settings/about.dart';
import 'package:project_1/product/ProductData/data_screen.dart';
import '../Home.dart';
import '../product/ProductCategory/categories_screen.dart';
import 'contact.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(80.h);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image(
          image: AssetImage('assets/image/ll.jpg'),
          width: 66.w, // عرض الصورة
          height: 88.h, // ارتفاع الصورة
        ),
      Spacer(),
        Row(
          children: [
            _buildNavItem('الرئيسية', context),
            SizedBox(width: 10.w),
            _buildNavItem('حول', context),
            SizedBox(width: 10.w),
            _buildNavItem('المنتجات', context),
            SizedBox(width: 10.w),
            _buildNavItem('تواصل معنا', context),
          ],
        ),
        SizedBox(width: 22.w,)
      ],
    );



  }

  Widget _buildNavItem(String text, BuildContext context) {
    return InkWell(
      onTap: () {
        if (text == 'الرئيسية') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        } else if (text == 'المنتجات') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FurnitureCategoriesPage()),
          );
        }else if (text == 'تواصل معنا') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ContactUsScreen()),
          );
        }else if (text == 'حول') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AboutPage()),
          );
        }
      },
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'arb',
          fontWeight: FontWeight.bold,
          color: Color(0xFF964B00),
          fontSize: 6.sp,
        ),
      ),
    );
  }
}
