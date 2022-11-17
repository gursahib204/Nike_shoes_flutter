import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowItemsWidget extends StatelessWidget {
  const RowItemsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for(int i =1;i<5;i++)
           Container(
             margin: EdgeInsets.only(top: 10,bottom: 10, left: 10),
             padding: EdgeInsets.symmetric(horizontal: 10),
             height: 160,
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
             child: Row(
               children: [
                 Stack(
                   alignment: Alignment.center,
                   children: [
                     Container(
                       margin: EdgeInsets.only(top: 20,right: 70),
                       height: 100,
                       width: 110,
                       decoration: BoxDecoration(
                         color: Color(0xFF475269),
                         borderRadius: BorderRadius.circular(10),

                       ),
                     ),
                     Image.asset(
                       "images/$i.png",
                       width: 150,
                       height: 150,
                       fit: BoxFit.contain,
                     ),
                   ],
                 ),
                 Padding(padding: EdgeInsets.symmetric(vertical: 30),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                         "Nike Shoe",
                       style: TextStyle(
                         color: Color(0xFF475269),
                         fontSize: 23,
                         fontWeight: FontWeight.w500,
                       ),
                     ),
                     SizedBox(height: 5,),
                     Text(
                       "Men's Shoes",
                       style: TextStyle(
                         color: Color(0xFF475269).withOpacity(0.8),
                         fontSize: 16,
                       ),
                     ),
                     Spacer(),
                     Row(
                       children: [
                         Text(
                           "\$50",
                           style: TextStyle(
                             color: Colors.redAccent,
                             fontSize: 22,
                             fontWeight: FontWeight.w500,
                           ),
                         ),
                         SizedBox(width: 70,),
                         Container(
                            padding: EdgeInsets.all(10),
                           decoration: BoxDecoration(
                             color: Color(0xFF475269),
                             borderRadius: BorderRadius.circular(10),

                           ),
                           child: Icon(
                             CupertinoIcons.cart_fill_badge_plus,
                             color: Colors.white,
                             size: 25,
                           ),
                         ),
                       ],
                     ),
                   ],
                 ),
                 ),

               ],
             ),

           ),

        ],
      ),
    );
  }
}
