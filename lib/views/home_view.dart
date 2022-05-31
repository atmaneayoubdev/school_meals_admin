import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:badges/badges.dart';
import '../components/item_widget.dart';
import '../components/my_drawer.dart';
import '../controllers/items_controller.dart';
import 'cart_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final CartController cart = Get.put(CartController());

  List<String> items = [
    "قهوة",
    "كروسان",
    "ماء",
    "عصير",
  ];
  List<String> imagePath = [
    "assets/cofe.jpg",
    "assets/croissant.jpg",
    "assets/water.jpg",
    "assets/juice.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
        drawer: const MyDrawer(type: 'home'),
        appBar: AppBar(
          foregroundColor: Colors.white,
          toolbarHeight: 100,
          backgroundColor: Theme.of(context).primaryColor,
          actions: [
            Center(
              child: GestureDetector(
                onTap: () => Get.to(const CartView()),
                child: Obx(
                  () => Badge(
                    padding: const EdgeInsets.all(2),
                    showBadge: cart.total() == 0 ? true : true,
                    badgeContent: Text(
                      cart.total().toString(),
                      style: GoogleFonts.cairo(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    position: BadgePosition.topEnd(),
                    child: const Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
          ],
          title: Text(
            "اختر الوجبة",
            style: GoogleFonts.cairo(
                fontSize: 25, fontWeight: FontWeight.w700, color: Colors.white),
          ),
        ),
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "مؤكولات",
                    style: GoogleFonts.tajawal(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                    child: ItemWidget(
                  size: _size,
                  image: imagePath[1],
                  name: items[1],
                )),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "مشروبات",
                    style: GoogleFonts.tajawal(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                    child: ItemWidget(
                  size: _size,
                  image: imagePath[0],
                  name: items[0],
                )),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: ItemWidget(
                    size: _size,
                    image: imagePath[2],
                    name: items[2],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: ItemWidget(
                    size: _size,
                    image: imagePath[3],
                    name: items[3],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ));
  }
}
