import 'package:flutter/material.dart';

class CardCategory extends StatelessWidget {

   final  String iconImagePath;
   final String cardName;
   
   const CardCategory({Key? key, 
  required this.iconImagePath,
  required this.cardName
}) : super(key: key);


 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.deepPurple[100],
        ),
        child: Row(children: [
          Image.asset(
            iconImagePath,
            height: 30),
         
          // ignore: prefer_const_constructors
          SizedBox(width: 10),
          // ignore: prefer_const_constructors
          Text(
            cardName 
          )
        ]),
      ),
    );
  }
}
