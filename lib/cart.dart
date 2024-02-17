import 'package:flutter/material.dart';
import 'package:shose_app/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom',
        price: '236',
        imagePath:
            'https://static.nike.com/a/images/q_auto:eco/t_product_v1/f_auto/dpr_2.0/h_607,c_limit/44c5aa54-2235-4425-9824-3733d3579474/dunk-low-big-kids-shoes-l6Jxh2.png',
        description:
            'The forward-thinking design of his latest signature shoe'),
    Shoe(
        name: 'AirJordans',
        price: '250',
        imagePath:
            'https://static.nike.com/a/images/q_auto:eco/t_product_v1/f_auto/dpr_2.0/h_607,c_limit/b6c8eaae-0646-4999-885c-89a97a20541f/air-max-1-mens-shoes-2C5sX2.png',
        description:
            'You\'ve got the hops and the speed-lace up in shone that enhance'),
    Shoe(
        name: 'KD Treys',
        price: '260',
        imagePath:
            'https://static.nike.com/a/images/q_auto:eco/t_product_v1/f_auto/dpr_2.0/h_607,c_limit/a200f9ed-aefe-4f27-89c0-dc861f23c0e1/v2k-run-womens-shoes-nRRH5X.png',
        description:
            'A secure midfoot strap is suited for scoring binges and defensive'),
    Shoe(
        name: 'Kyrie 6',
        price: '190',
        imagePath:
            'https://static.nike.com/a/images/q_auto:eco/t_product_v1/f_auto/dpr_2.0/h_607,c_limit/b9b91d8c-70b9-4461-8107-e656b41f1633/air-max-90-gore-tex-mens-shoes-cZwz8t.png',
        description:
            'Bouncy cushioing is paired wint soft yet supportive foam for'),
    Shoe(
        name: 'Kyrie 6',
        price: '190',
        imagePath:
            'https://static.nike.com/a/images/q_auto:eco/t_product_v1/f_auto/dpr_2.0/h_607,c_limit/acf9cf41-a9bc-4e6a-b98a-7a38bb163f31/air-jordan-1-retro-high-og-mens-shoes-JHpxkn.png',
        description:
            'Bouncy cushioing is paired wint soft yet supportive foam for'),
    Shoe(
        name: 'Kyrie 6',
        price: '190',
        imagePath:
            'https://static.nike.com/a/images/q_auto:eco/t_product_v1/f_auto/dpr_2.0/h_607,c_limit/07762f2a-9777-41bd-aa93-fa9ae0b9ee14/air-jordan-xxxviii-low-fundamental-basketball-shoes-f7GQhK.png',
        description:
            'Bouncy cushioing is paired wint soft yet supportive foam for'),
    Shoe(
        name: 'Kyrie 6',
        price: '190',
        imagePath:
            'https://static.nike.com/a/images/q_auto:eco/t_product_v1/f_auto/dpr_2.0/h_607,c_limit/ecb0b574-5375-4225-a71a-887cc5371de3/ja-1-basketball-shoes-bCx2W3.png',
        description:
            'Bouncy cushioing is paired wint soft yet supportive foam for'),
    Shoe(
        name: 'Kyrie 6',
        price: '190',
        imagePath:
            'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/091d2018-484a-43d4-b85c-3b3d470c1e06/air-jordan-1-mid-se-big-kids-shoes-hfXjW4.png',
        description:
            'Bouncy cushioing is paired wint soft yet supportive foam for'),
    Shoe(
        name: 'Kyrie 6',
        price: '190',
        imagePath:
            'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/5763a499-1910-49a9-b6e0-e2b9665400eb/air-jordan-1-high-g-nrg-mens-golf-shoes-KqNcWn.png',
        description:
            'Bouncy cushioing is paired wint soft yet supportive foam for'),
    Shoe(
        name: 'Kyrie 6',
        price: '190',
        imagePath:
            'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/f895ad18-a196-454d-ae19-84800a531406/air-jordan-1-mid-se-mens-shoes-S9CPQh.png',
        description:
            'Bouncy cushioing is paired wint soft yet supportive foam for'),
  ];
  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemtoCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
