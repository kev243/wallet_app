import 'package:flutter/material.dart';
import 'package:walletapp/main.dart';
import 'my_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

// This widget is the root of your application.
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'My ',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Cards',
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey[300]),
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),

            //cards

            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                children: [
                  MyCard(
                    Balance: 250.0494,
                    cardNumber: 2344545,
                    expiryMonth: 10,
                    expiryYears: 24,
                    color: Colors.deepPurple[400],
                  ),
                  MyCard(
                    Balance: 10.094,
                    cardNumber: 233545,
                    expiryMonth: 4,
                    expiryYears: 25,
                    color: Colors.deepOrange[400],
                  ),
                  MyCard(
                      Balance: 40.094,
                    cardNumber: 2553545,
                    expiryMonth: 3,
                    expiryYears: 28,
                    color: Colors.blue[400],
                  ),
                  ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
