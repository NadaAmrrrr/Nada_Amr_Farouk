import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quizapp/screens/login_screen.dart';
import 'package:quizapp/utils/icons.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      // responsive design
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                landingBackground,
              ),
              fit: BoxFit.cover)),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // SizedBox(
          //   height: MediaQuery.of(context).size.height * 0.2,
          // ),
          Spacer(),
          Image.asset(appLogo),
          Text(
            "ITI Quiz App",
            style: TextStyle(
              fontFamily: 'Pacifico',
                color: Colors.yellow,
                fontSize: 30,
                ),
          ),
          Spacer(),
          Text(
            "We are creative enjoy our app ",
            style: TextStyle(
              fontFamily: 'DancingScript',
                color: Colors.white,
              fontSize: 30,
              fontStyle: FontStyle.italic,),
          ),
          Spacer(),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) =>  LoginScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Set the background color to green
                ),
                child: Text("start",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),),
              )

            ),
          ),
        ],
      ),
    )
        // Image.asset(landingBackground),
        );
  }
}
