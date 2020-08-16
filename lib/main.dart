import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Ninja(),
));

class Ninja extends StatefulWidget {
  @override
  _NinjaState createState() => _NinjaState();
}

class _NinjaState extends State<Ninja> {

  int levelCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,// take away the shadow
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if(levelCount>=10)
              levelCount =0;
            else
            levelCount+=1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[850],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/ank.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(//Divider between pic and content
              height: 50.0,
              color: Colors.grey[850],
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontSize: 15.0,

              ),
            ),
            SizedBox(height: 8.0),//add space between columns
            Text(
              'ANK',
              style: TextStyle(
                color: Colors.amberAccent[100],
                letterSpacing: 2.0,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,

              ),
            ),
            SizedBox(height: 24.0),
            Text(
              'Sekiro Boss-Level',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontSize: 15.0,

              ),
            ),
            SizedBox(height: 8.0),//add space between columns
            Text(
              '$levelCount',
              style: TextStyle(
                color: Colors.amberAccent[100],
                letterSpacing: 2.0,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,

              ),
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                Text(
                  'gogoliving@gmail.com',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),

                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
