// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {

  final double Balance ;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYears;
  final color;



  const MyCard({
    Key? key,

  required this.Balance,
  required this.cardNumber,
  required this.expiryMonth,
  required this.expiryYears,
  required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Balance',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Image.asset('icons/visa.png',
                height: 50,)
              ],
            ),

            SizedBox(height: 10),

            // ignore: prefer_const_constructors
            Text(
              '\$' + Balance.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //card info
                Text(
                  cardNumber.toString(),
                  style: TextStyle(color: Colors.white),
                ),

                //card expiry date
                Text(
                  expiryMonth.toString() + '/' + expiryYears.toString(),
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
