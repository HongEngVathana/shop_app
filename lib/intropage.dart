import 'package:flutter/material.dart';
import 'package:shose_app/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Image(
                image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2020/05/11/15/38/tom-5158824_960_720.png'),
                height: 400,
                width: 350,
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            const Text(
              'Just Do It',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Brand new sneaker and custon kicks made wint premiun quality',
              style: TextStyle(fontSize: 15, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 45,
            ),
            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder:(context)=>Homepage(),)),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12)),
                    
                padding: const EdgeInsets.all(24),
                child: const Center(
                    child: Center(
                      child:  Text(
                                    'Shop Now',
                                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),
                                  ),
                    )),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
