import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shose_app/Shoe_tile.dart';
import 'package:shose_app/cart.dart';
import 'package:shose_app/shoe.dart';

class ShoPage extends StatefulWidget {
  const ShoPage({super.key});

  @override
  State<ShoPage> createState() => _SchoPageState();
}

class _SchoPageState extends State<ShoPage> {
  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context,listen: false).addItemtoCart(shoe);
    showDialog(context: context, builder: (context)=>AlertDialog(
      title: Text('Successfuly added!'),
      content: Text('Chack your'),
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context,value,child)=>
    Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Search',
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text(
            'everyone flise..some fly longer tham orher',
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text(
                'Hot Picks 🔥',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Text(
                'See all',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        

        Expanded(
            child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  // ignore: unused_local_variable
                  Shoe shoe = value.getShoeList()[index];
                  return ShoeTile(
                    shoe: shoe,
                    onTap: () => addShoeToCart(shoe),
                  );
                })),
                Padding (
                  padding:  EdgeInsets.only(top: 25.0,right: 25.0),
                  child: Divider(color: Colors.white,),
                ),
      ],
    ),);
  }
}
