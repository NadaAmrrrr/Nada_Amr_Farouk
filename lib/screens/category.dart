import 'dart:io';

import 'package:flutter/material.dart';
import 'package:quizapp/screens/categorycard.dart';
class category_screen extends StatelessWidget {
  
   category_screen({super.key});
  List data = [
    {'name':"iq quiz",'colors':Color.fromARGB(255, 216, 122, 233)},
    {'name':"Sports quiz",'colors':Color.fromRGBO(80, 141, 192, 1)},
    {'name':"History quiz",'colors':Color.fromARGB(255, 108, 197, 111)},
    ];
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for(int i =0 ; i<data.length;i++)
          Categorycard(
            quizcolor:data[i]['colors'],
            quizname: data[i]['name'],
         )
      ],),
    );
  }
}