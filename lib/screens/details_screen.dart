import 'package:dressmeup/Widget/container_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widget/custom_brand_list_tail.dart';
import '../network/dio_method_view_model.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  static final DioMethods dioMethods = Get.put(DioMethods(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            ListTile(
              leading: const SizedBox(
                height: 48,
                width: 48,
              ),
              title: Text(
                "Catalog",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.normal,
                    fontSize: 17,
                    color: const Color(0xFF454F5B)),
              ),
              trailing: InkWell(
                onTap: () {},
                child: Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    color: const Color(0xFFFFFFFF),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset: const Offset(0, 0.75),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.search_outlined,
                    color: Color(0xFF000000),
                    size: 30,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.9049,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Color(0xFFFFFFFF),
                ),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        ContainerDetails(
                          image: 'images/man.png',
                          name: 'Men',
                          color: const Color(0xFFB4E0FA),
                          itemCount: DetailsScreen.dioMethods.man.length,
                          onPressed: (){
                            Navigator.pushReplacementNamed(context, "/men_product_screen");
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ContainerDetails(
                          image: 'images/women.png',
                          name: 'Women',
                          color: const Color(0xFFFA9A88),
                          itemCount: DetailsScreen.dioMethods.women.length,
                          onPressed: (){
                            Navigator.pushReplacementNamed(context, "/women_product_screen");
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ContainerDetails(
                          image: 'images/kid.png',
                          name: 'Kid',
                          color: const Color(0xFF9C6ADE),
                          itemCount: DetailsScreen.dioMethods.kid.length,
                          onPressed: (){
                            Navigator.pushReplacementNamed(context, "/kid_product_screen");
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: double.infinity,
                          height: 90,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                image: AssetImage('images/Ads.png'),
                                fit: BoxFit.fill),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomBrandListTail(
                          name: "Brands",
                          image: 'images/Star.png',
                          trailing: () {
                            Navigator.pushReplacementNamed(context, "/brands_product_screen");
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomBrandListTail(
                          name: "About store",
                          image: 'images/Books.png',
                          trailing: () {
                            Navigator.pushReplacementNamed(context, "/about_store_product_screen");
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomBrandListTail(
                          name: "Electronics",
                          image: 'images/Comment.png',
                          trailing: () {
                            Navigator.pushReplacementNamed(context, "/electronics_product_screen");
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomBrandListTail(
                          name: "Other's",
                          image: 'images/Info.png',
                          trailing: () {
                            Navigator.pushReplacementNamed(context, "/others_product_screen");
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
