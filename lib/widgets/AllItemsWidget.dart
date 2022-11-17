import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllItemsWidget extends StatelessWidget {
  const AllItemsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.68,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        for (int i =1; i<5;i++)
          Container(
            padding: EdgeInsets.only(left: 15 ,right: 15 ,top: 10 ),
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Color(0xFFF5F9FD),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF475269).withOpacity(0.3),
                  blurRadius: 5,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Column(

              children: [
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, "itemPage");
                  },
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Image.asset(
                      "images/$i.png",
                      height: 130,
                      width: 130,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Nike Shoe",
                      style: TextStyle(
                        color: Color(0xFF475269),

                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "New Nike Shoes For Men",
                    style: TextStyle(
                      color: Color(0xFF475269).withOpacity(0.7),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$55",
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),

                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                       decoration: BoxDecoration(
                         color: Color(0xFF475269),
                         borderRadius: BorderRadius.circular(10),
                       ),
                        child: Icon(
                          CupertinoIcons.cart_fill_badge_plus,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

          ),
      ],
    );
  }
}
