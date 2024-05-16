import 'package:flutter/material.dart';

// ignore: camel_case_types
class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

// ignore: camel_case_types
class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              children: [
                   Expanded(
                     child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.grey[200],
                        prefixIcon: const Icon(Icons.search),
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: Colors.grey[360],
                          fontWeight: FontWeight.bold,
                        )
                      ),
                     ),
                   ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.menu),
                ),
              ],
            ),
            const SizedBox(height: 30,),
            const Text("Categories",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 20,
              color: Colors.black,
            ),),
            const SizedBox(
              height: 20,
            ),
                 Container(
                  height: 100,
                   child: ListView(
                    scrollDirection: Axis.horizontal,
                     children: const [
                                  Category(chiLd: Icon(Icons.watch_outlined,size: 40,),
                                  CategoryName: "Watch",
                                  ),
                                  Category(chiLd: Icon(Icons.phone,
                                  size: 40,), 
                                  CategoryName: "Mobile"),
                                  Category(chiLd: Icon(Icons.book,
                                  size: 40,), 
                                  CategoryName: "Books"),
                                  Category(chiLd: Icon(Icons.smart_screen_outlined,
                                  size: 40,), 
                                  CategoryName: "Televsion"),
                                  Category(chiLd: Icon(Icons.card_giftcard_outlined,
                                  size: 40,
                                  ),
                                   CategoryName:'Gifts'),
                                   Category(chiLd: Icon(Icons.bike_scooter,
                                  size: 40,
                                  ),
                                   CategoryName:'Biks'),
                                  
                                   ],
                             ),
                 ),
           Container(
            margin: EdgeInsets.all(10),
             child: Text("Best Selling",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 20,
                color: Colors.black,
              ),),
           ),
            SingleChildScrollView
            (
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      bestSelling(itemphoto: "images/Screenshot 2022-08-25 103947.png", 
                     titel: "Flower", subTitel: "sun Flower", price: 50),
                  bestSelling(itemphoto: "images/Screenshot 2022-08-25 103947.png", 
                     titel: "Flower", subTitel: "sun Flower", price: 70),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      bestSelling(itemphoto: "images/Screenshot 2022-08-25 103947.png", 
                     titel: "Flower", subTitel: "sun Flower", price: 50),
                  bestSelling(itemphoto: "images/Screenshot 2022-08-25 103947.png", 
                     titel: "Flower", subTitel: "sun Flower", price: 70),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      bestSelling(itemphoto: "images/Screenshot 2022-08-25 103947.png", 
                     titel: "Flower", subTitel: "sun Flower", price: 50),
                  bestSelling(itemphoto: "images/Screenshot 2022-08-25 103947.png", 
                     titel: "Flower", subTitel: "sun Flower", price: 70),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}



class Category extends StatelessWidget {
  final Widget chiLd ;
  final String CategoryName;
  const Category({super.key, 
  required this.chiLd, 
  required this.CategoryName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10,right: 10),
      child:  Column(
       children:[Container(
          child: chiLd,
          decoration: BoxDecoration(
            color: Colors.grey[400],
            borderRadius: BorderRadius.circular(100),
          ),
          padding: EdgeInsets.all(15),
          ),
           Text(CategoryName,
           style:const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey,
           ) ,
           ),
          ]
      ),
    );
  }
}

//===============================================


class bestSelling extends StatelessWidget {
  final String  itemphoto;
  final String titel,subTitel;
  final double price;
   bestSelling({super.key, required this.itemphoto, required this.titel, required this.subTitel, required this.price,});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: [
            Container(
              width: 150,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey,
                ),
              child:Image.asset(itemphoto) ,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(titel,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),),
                 Text(subTitel,
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey[500],
                ),),
                 Text("${price}",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.amber,
                ),),
              ],
            )
        ]),
      ),
    );
  }
}