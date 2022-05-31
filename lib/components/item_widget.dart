import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../controllers/items_controller.dart';

class ItemWidget extends StatefulWidget {
  const ItemWidget({
    Key? key,
    required Size size,
    required this.image,
    required this.name,
  })  : _size = size,
        super(key: key);

  final Size _size;
  final String image;
  final String name;

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  final CartController cart = Get.put(CartController());
  bool show = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget._size.width * 0.95,
      height: widget._size.height * 0.2,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 3),
            blurRadius: 5,
            spreadRadius: 2,
            color: Colors.black54,
          )
        ],
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(widget.image),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.7),
                ],
              ),
            ),
          ),
          Center(
            child: Text(
              widget.name,
              style: GoogleFonts.tajawal(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.bottomLeft,
                child: InkWell(
                  onTap: () {
                    switch (widget.name) {
                      case "قهوة":
                        cart.cofeCount++;
                        setState(() {
                          show = true;
                        });
                        break;
                      case "كروسان":
                        cart.croissantCount++;
                        setState(() {
                          show = true;
                        });
                        break;
                      case "ماء":
                        cart.waterCount++;
                        setState(() {
                          show = true;
                        });
                        break;
                      case "عصير":
                        cart.juiceCount++;
                        setState(() {
                          show = true;
                        });
                        break;
                      default:
                    }
                  },
                  child: Container(
                    width: 50,
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        //borderRadius: BorderRadius.circular(16),
                        color: Colors.white),
                    child: const Center(
                      child: FaIcon(
                        FontAwesomeIcons.plus,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          if (show)
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    onTap: () {
                      switch (widget.name) {
                        case "قهوة":
                          cart.cofeCount--;
                          if (cart.cofeCount.value == 0) {
                            setState(() {
                              show = false;
                            });
                          }

                          break;
                        case "كروسان":
                          cart.croissantCount--;
                          if (cart.croissantCount.value == 0) {
                            setState(() {
                              show = false;
                            });
                          }
                          break;
                        case "ماء":
                          cart.waterCount--;
                          if (cart.waterCount.value == 0) {
                            setState(() {
                              show = false;
                            });
                          }
                          break;
                        case "عصير":
                          cart.juiceCount--;
                          if (cart.juiceCount.value == 0) {
                            setState(() {
                              show = false;
                            });
                          }
                          break;
                        default:
                      }
                    },
                    child: Container(
                      width: 50,
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          //borderRadius: BorderRadius.circular(16),
                          color: Colors.white),
                      child: const Center(
                        child: FaIcon(
                          FontAwesomeIcons.minus,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
        ],
      ),
    );
  }
}
