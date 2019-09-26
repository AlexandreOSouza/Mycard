import 'package:flutter/material.dart';

void main() => runApp(Mycard());

class Mycard extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/alexandre.jpg'),
              ),
              Text(
                'Alexandre',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'FLUTTER STUDENT',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 5.0,
                  fontFamily: 'SourceSansPro',
                  fontSize: 15.0,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              InformationBox(
                text: '+55 11 95914 7536',
                icon: Icons.phone,
              ),
              InformationBox(
                text: 'alexandre98@gmail.com',
                icon: Icons.email,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InformationBox extends StatelessWidget {
  
  final String text;
  final IconData icon;

  InformationBox({this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: ListTile(
        leading: Icon(
            icon,
            color: Colors.teal,
        ),
        title: Text(
          text,
          style: TextStyle(
            fontFamily: 'SourceSansPro',
            fontSize: 20.0,
            color: Colors.teal.shade900,
          ),
        ),
      ),
    );
  }
}