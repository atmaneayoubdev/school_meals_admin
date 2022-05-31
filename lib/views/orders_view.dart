import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/my_drawer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class OrdersView extends StatefulWidget {
  const OrdersView({Key? key}) : super(key: key);

  @override
  State<OrdersView> createState() => _OrdersViewState();
}

class _OrdersViewState extends State<OrdersView> {
  FirebaseFirestore db = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        toolbarHeight: 100,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          "طلبات",
          style: GoogleFonts.cairo(
            fontSize: 25,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
      drawer: const MyDrawer(type: 'orders'),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: StreamBuilder(
              stream:
                  FirebaseFirestore.instance.collection('users').snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                if (streamSnapshot.data != null &&
                    streamSnapshot.data!.docs.isNotEmpty) {
                  log(streamSnapshot.data!.docs.length.toString());

                  return ListView.builder(
                    itemCount: streamSnapshot.data!.docs.length,
                    itemBuilder: (ctx, index) => Container(
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(0, 3),
                              blurRadius: 5,
                              spreadRadius: 5,
                              color: Colors.black12),
                        ],
                      ),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'كوكيز  ' +
                                      streamSnapshot.data!.docs[index]
                                          .get("cookies"),
                                  style: GoogleFonts.tajawal(
                                      fontSize: 20,
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.normal),
                                ),
                                Text(
                                  'كروسان  ' +
                                      streamSnapshot.data!.docs[index]
                                          .get("croissant"),
                                  style: GoogleFonts.tajawal(
                                      fontSize: 20,
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.normal),
                                ),
                                Text(
                                  'قهوة  ' +
                                      streamSnapshot.data!.docs[index]
                                          .get("coffe"),
                                  style: GoogleFonts.tajawal(
                                      fontSize: 20,
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.normal),
                                ),
                                Text(
                                  'ماء  ' +
                                      streamSnapshot.data!.docs[index]
                                          .get("water"),
                                  style: GoogleFonts.tajawal(
                                      fontSize: 20,
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {
                                streamSnapshot.data!.docs[index].reference
                                    .delete();
                              },
                              icon: const FaIcon(
                                FontAwesomeIcons.trash,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                } else {
                  return Center(
                      child: Text(
                    "لا يوجد طلبات ...",
                    style: GoogleFonts.tajawal(
                        fontSize: 20,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w700),
                  ));
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
