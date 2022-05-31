import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../views/about_us.dart';
import '../views/orders_view.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key, required this.type}) : super(key: key);
  final String type;

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Container(
        //padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        width: _size.width * 0.8,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Theme.of(context).primaryColor,
              child: Center(
                child: Text(
                  "DUS COFFEE",
                  style: GoogleFonts.cairo(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            // ListTile(
            //   leading: const FaIcon(
            //     FontAwesomeIcons.house,
            //     color: Color.fromRGBO(19, 61, 123, 1),
            //   ),
            //   title: Text(
            //     "الرئيسية",
            //     style: GoogleFonts.cairo(
            //       fontSize: 22,
            //       fontWeight: FontWeight.w700,
            //       color: Colors.black,
            //     ),
            //   ),
            //   onTap: () {
            //     widget.type == "home" ? Get.back() : Get.to(const HomeView());
            //   },
            // ),
            // const Divider(
            //   color: Color.fromARGB(146, 19, 61, 123),
            // ),
            // ListTile(
            //   leading: const FaIcon(
            //     FontAwesomeIcons.cartShopping,
            //     color: Color.fromRGBO(19, 61, 123, 1),
            //   ),
            //   title: Text(
            //     "السلة",
            //     style: GoogleFonts.cairo(
            //         fontSize: 22,
            //         fontWeight: FontWeight.w700,
            //         color: Colors.black),
            //   ),
            //   onTap: () {
            //     widget.type == "cart" ? Get.back() : Get.to(const CartView());
            //   },
            // ),
            // const Divider(
            //   height: 1,
            //   color: Color.fromARGB(146, 19, 61, 123),
            // ),
            ListTile(
              leading: const FaIcon(
                FontAwesomeIcons.shop,
                color: Color.fromRGBO(19, 61, 123, 1),
              ),
              title: Text(
                "طلبات",
                style: GoogleFonts.cairo(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                widget.type == "orders"
                    ? Get.back()
                    : Get.to(const OrdersView());
              },
            ),
            const Divider(
              color: Color.fromARGB(146, 19, 61, 123),
            ),
            ListTile(
              leading: const FaIcon(
                FontAwesomeIcons.circleInfo,
                color: Color.fromRGBO(19, 61, 123, 1),
              ),
              title: Text(
                "من نحن",
                style: GoogleFonts.cairo(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                widget.type == "aboutUs"
                    ? Get.back()
                    : Get.to(
                        const AboutUs(),
                      );
              },
            ),
          ],
        ));
  }
}
