import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/my_drawer.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(type: "aboutUs"),
      appBar: AppBar(
        foregroundColor: Colors.white,
        toolbarHeight: 100,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          "من نحن",
          style: GoogleFonts.cairo(
              fontSize: 25, fontWeight: FontWeight.w700, color: Colors.white),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset('assets/dus1.jpeg'),
              const SizedBox(
                height: 20,
              ),
              Text(
                "  :  اسم المشروع ",
                textAlign: TextAlign.right,
                style: GoogleFonts.cairo(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              Text(
                " DUS COFFEE ",
                textAlign: TextAlign.right,
                style: GoogleFonts.cairo(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).primaryColor),
              ),
              Text(
                " : الفكره العامة للمشروع ",
                textAlign: TextAlign.right,
                style: GoogleFonts.cairo(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              Text(
                " تطبيق الكتروني يعمل على نظام الاندرويد لطلب الطعام  ",
                textAlign: TextAlign.right,
                style: GoogleFonts.cairo(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).primaryColor),
              ),
              Text(
                " : وصف مختصر للمشروع ",
                textAlign: TextAlign.right,
                style: GoogleFonts.cairo(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              Text(
                " تطبيق متكامل يساعد العميل على الطلب بطريقة ذكية حيث يعرض قائمة الطعام بطريقة مميزة بالصور والسعر والوصف، ويتميز التطبيق بسهولة اختيار أصناف الطعام واضافاتها إلى سلة المشتريات وارسال الطلب ",
                textAlign: TextAlign.right,
                style: GoogleFonts.cairo(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).primaryColor),
              ),
              Text(
                " : أهداف المشروع ",
                textAlign: TextAlign.right,
                style: GoogleFonts.cairo(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              Text(
                " ١- تعليم الاطفال لغة البرمجة من خلال الأكواد وفهم عمليات الترميز بطريقة مبسطة \n  ٢- تنمية مهارات التفكير بطريقة مبدعة وإيجاد حلول مبتكرة لأي مشكلة.\n ٣- تعليم المثابرة من خلال التجربة والتفكير فى حل أى مشكلات قد تواجههم.\n ",
                textAlign: TextAlign.right,
                style: GoogleFonts.cairo(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).primaryColor),
              ),
              Text(
                " : المعلمة المنفذه ",
                textAlign: TextAlign.right,
                style: GoogleFonts.cairo(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              Text(
                " إيمان الثبيتي \n التزام الصيخان",
                textAlign: TextAlign.right,
                style: GoogleFonts.cairo(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).primaryColor),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset('assets/dus2.jpeg'),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
