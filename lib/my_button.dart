import 'package:flutter/material.dart';


class MyButon extends StatelessWidget {


final String iconImagePath;
final String buttonText;

  const MyButon({Key? key,
  required this.iconImagePath,
  required this.buttonText
  
  }) : super(key: key);

  @override

Widget build(BuildContext context) {

return Column(
                  children: [
                    Container(
                      height: 80,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 20,
                            spreadRadius: 2
                          ),
                        ]
                      ),
                      child: Center(
                        child: Image.asset(iconImagePath),
                      ),
                    ),
                    SizedBox(height: 11),
                    Text (buttonText,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700]
                    ),
                    
                    ),
                  ],
                );

}


}