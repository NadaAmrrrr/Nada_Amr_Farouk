import 'package:flutter/material.dart';
import 'package:quizapp/screens/questions.dart';
class Categorycard extends StatelessWidget {
  final String quizname;
    final Color quizcolor;
  const Categorycard({
    required this.quizcolor,
    required this.quizname,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () => Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=> questionscreen())),
        child: Container(
          color:quizcolor,
          child: Center(child: Text(quizname,style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400),),), 
        ),
      ),
    );
  }
}