import 'package:flutter/material.dart';

import 'Bar.dart';

class ContactUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: AlignmentDirectional.topEnd, // تعديل المحاذاة لليمين
              child: Text(
                'للتواصل معنا، يمكنك استخدام المعلومات التالية:\n\n',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.right, // تأكيد اتجاه النص
                textDirection: TextDirection.rtl, // اتجاه النص من اليمين إلى اليسار
              ),
            ),
            Align(
              alignment: AlignmentDirectional.topEnd, // تعديل المحاذاة لليمين
              child: Text(
                'رقم التليفون: +20 123 456 7890\n',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.right, // تأكيد اتجاه النص
                textDirection: TextDirection.rtl, // اتجاه النص من اليمين إلى اليسار
              ),
            ),
            Align(
              alignment: AlignmentDirectional.topEnd, // تعديل المحاذاة لليمين
              child: Text(
                'البريد الإلكتروني: info@example.com\n',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.right, // تأكيد اتجاه النص
                textDirection: TextDirection.rtl, // اتجاه النص من اليمين إلى اليسار
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: AlignmentDirectional.topEnd, // تعديل المحاذاة لليمين
              child: Text(
                'نحن في انتظار تواصلكم ونرحب بأي استفسارات أو مقترحات. شكراً لتواصلكم معنا!',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.right, // تأكيد اتجاه النص
                textDirection: TextDirection.rtl, // اتجاه النص من اليمين إلى اليسار
              ),
            ),
          ],
        ),
      ),
    );
  }
}
