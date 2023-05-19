// ignore: file_names
// ignore_for_file: non_constant_identifier_names

import 'dart:html';
import 'package:dressmeup/model/wishlist_model.dart';
import 'package:dressmeup/service/wishlistService.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Widget/wish_list.dart';

// ignore: camel_case_types
class wishListScreen extends StatefulWidget {
  const wishListScreen({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _wishListScreenState createState() => _wishListScreenState();
}

// ignore: camel_case_types
class _wishListScreenState extends State<wishListScreen> {
  var _wishList = WishList();
  var _wishlistServise = wishlistServise();

  List<WishList> _wishlist = <WishList>[];

  @override
  void initState() {
    super.initState();
    getAllWishList();
  }

  getAllWishList() async {
    _wishlist = <WishList>[];
    var wishlists = await _wishlistServise.readWishList();
    wishlists.forEach((wishList) {
      setState(() {
        var wishlistModel = WishList();
        wishlistModel.id = wishList['id'];
        wishlistModel.image = wishList['image'];
        wishlistModel.name = wishList['name'];
        wishlistModel.description = wishList['description'];
        wishlistModel.price = wishList['price'];
        wishlistModel.size = wishList['size'];
        wishlistModel.color = wishList['color'];
        _wishlist.add(wishlistModel);
      });
    });
  }

  List<String> image = ['images/icImage.png'];
  List<String> name = ['Elisabetta Franchi'];
  List<String> description = ['Double-Breasted \n Black Jacket'];
  List<String> prise = ['\n\$635.95\n'];
  List<String> size = ['-  M '];
  List<String> color = ['-  Black'];
  AppBar bulidAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: const Text(
        "Wishlist",
        style: TextStyle(
          color: Color(0XFF212B36),
          fontSize: 17,
        ),
      ),
      automaticallyImplyLeading: false,
      leading:
          GestureDetector(onTap: () {}, child: Image.asset("images/icNav.png")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: bulidAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Container(
          padding: const EdgeInsets.all(20),
          height: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25))),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('images/IcClothing.jpg'),
                  const SizedBox(width: 16),
                  const Text(
                    'Clothing',
                    style: TextStyle(
                      color: Color(0XFF212B36),
                      fontSize: 17,
                    ),
                  ),
                  const Spacer(),
                  const Text('9'),
                ],
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: _wishlist.length,
                      itemBuilder: (BuildContext, index) {
                        return Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            WishListViewShow(
                              text1: image[index],
                              text2: name[index],
                              text3: description[index],
                              text4: prise[index],
                              text5: size[index],
                              text6: color[index],
                            )
                          ],
                        );
                      })),
            ],
          ),
        ),
      ),
    );
  }
}
