import 'package:dressmeup/model/wishlist_model.dart';
import 'package:dressmeup/repository/repository.dart';

class wishlistServise {
  late Repository _repository;

  wishlistServise() {
    _repository = Repository();
  }

  saveWishList(WishList wishList) async {
    return await _repository.insertData('WishList', WishList().wishListMap());
  }

  readWishList() async {
    return await _repository.readData('WishList');
  }
}
