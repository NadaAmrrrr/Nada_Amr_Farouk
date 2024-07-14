import 'package:flutter/material.dart';
import 'package:quizapp/screens/scorescreen.dart';
class questionscreen extends StatelessWidget {
  const questionscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.logout),
          onPressed: () {},
        ),
        actions: [
          Icon(Icons.message),
          SizedBox(
            width: 12,
          ),
          Icon(
            Icons.notification_add,
          ),
          SizedBox(
            width: 12,
          ),
          Icon(Icons.search),
          SizedBox(
            width: 12,
          )
        ],
        title: Text("Quiz app"),
        // centerTitle: false,
        backgroundColor: Color.fromARGB(255, 94, 212, 98),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "1st Qestion",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                "What is the last country to host the world cup?",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 22,
              ),
              ElevatedButton(onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=> Scorescreen()));}, child: Text("USA")),
              ElevatedButton(onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=> Scorescreen()));}, child: Text("Qatar")),
              ElevatedButton(onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=> Scorescreen()));}, child: Text("France")),
              ElevatedButton(onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=> Scorescreen()));}, child: Text("Egypt")),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),
        ],
      ),
    );
  }
}