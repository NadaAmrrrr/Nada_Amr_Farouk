import 'package:flutter/material.dart';
import 'package:quizapp/screens/landing_screen.dart';
import 'package:quizapp/screens/category.dart';
class Scorescreen extends StatelessWidget {
  const Scorescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("HELLO Nada, you have finished the quiz and our score is ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
          Text("3/20",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50,color: Colors.amber),),
          SizedBox(height: 30,),
          OutlinedButton(onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=> category_screen()));}, child: Text("play again")),
          OutlinedButton(onPressed: () {Navigator.pushAndRemoveUntil(context,MaterialPageRoute<void>(builder: (BuildContext context)=> LandingScreen()),ModalRoute.withName('//'));}, child: Text("Exit")),
        ],),

      ),
    );
  }
}