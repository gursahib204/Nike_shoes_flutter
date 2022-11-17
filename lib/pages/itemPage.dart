 import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../widgets/ItemBottomNavBar.dart';

class ItemPage extends StatelessWidget {
   const ItemPage({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color(0xFFF5F9FD),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF475269).withOpacity(0.3),
                              blurRadius: 5,
                              spreadRadius: 1,

                            ),
                          ]
                        ),
                        child: Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Color(0xFF475269),
                        ),
                      ),
                      
                    ),
                     Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Color(0xFFF5F9FD),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF475269).withOpacity(0.3),
                              blurRadius: 5,
                              spreadRadius: 1,

                            ),
                          ]
                      ),
                      child: Icon(
                        Icons.favorite,
                        size: 30,
                        color: Colors.redAccent,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Container(
                height: MediaQuery.of(context).size.height*0.43,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 230,
                      width: 230,
                      margin: EdgeInsets.only(top: 20, right: 70 ),
                      decoration: BoxDecoration(
                        color: Color(0xFF475269),
                        borderRadius: BorderRadius.circular(10),

                      ),
                    ),
                    Image.asset(
                      "images/1.png",
                      height: 350,
                      width: 350,
                      fit: BoxFit.contain,
                    )
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.4,
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                decoration: BoxDecoration(
                  color: Color(0xFFF5F9FD),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),

                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF475269).withOpacity(0.4),
                      blurRadius: 10,
                      spreadRadius: 1,

                    ),
                  ]
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "New Nike Shoe",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            color: Color(0xFF475269),
                          ),
                        ),
                        Text(
                          "\$55",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 25,
                            color: Colors.redAccent,
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: 15,),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: RatingBar.builder(
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        itemSize: 20,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4),
                        itemBuilder: (context, _) => Icon(
                          Icons.favorite,
                          color: Colors.redAccent,

                        ),
                        onRatingUpdate: (index) {},
                      ),
                    ),

                    SizedBox(height: 10,),
                    Text(
                      "This is desription of the shoe product. Air Max shoes feature one or more translucent pouches of pressurized gas embedded in the midsole and visible from the outside of the shoe",
                      style: TextStyle(
                        color: Color(0xFF475269),
                        fontSize: 10,

                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Text(
                          "Size:",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF475269),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            for(int i=5; i<10;i++)
                              Container(
                                height: 35,
                                width: 35,
                                alignment: Alignment.center,
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(
                                  color: Color(0xFFF5F9FD),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xFF475269).withOpacity(0.3),
                                      blurRadius: 5,
                                      spreadRadius: 1,

                                    ),
                                  ]
                                ),
                                child: Text(
                                    i.toString(),
                                  style: TextStyle(
                                   fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                  ),

                                ),
                              ),
                          ],
                        ),

                      ],
                    ),


                  ],
                ),
              ),
            ],
          ),
        ),
      ),
       bottomNavigationBar: ItemBottomNavBar(),
     );
   }
 }