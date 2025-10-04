import 'package:flutter/material.dart';

class E_science extends StatefulWidget {
  const E_science({super.key});

  @override
  State<E_science> createState() => _E_scienceState();
}

class _E_scienceState extends State<E_science> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  body: Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'Science',
              style: TextStyle(
                color: Colors.blueGrey, // Title color
                fontSize: 30, // Title size
              ),
            ),
            SizedBox(height: 50), // Gap below title
            Container(height: 50,width:400,child:ElevatedButton(
              onPressed: () {
                // Biology button logic
              },
              child: Text('Biology', style: TextStyle(fontSize: 30)),
            )),
            SizedBox(height: 20), // Gap between buttons
            Container(height: 50,width:400,child:  ElevatedButton(
              onPressed: () {
                // Chemistry button logic
              },
              child: Text('Chemistry',style: TextStyle(fontSize: 30)),
            )),
            SizedBox(height: 20), // Gap between buttons
            Container(height: 50,width:400,child:ElevatedButton(
              onPressed: () {
                // Physics button logic
              },
              child: Text('Physics',style: TextStyle(fontSize: 30)),
            )),
            SizedBox(height: 20), // Gap between buttons
            Container( height: 50,width:400,
              child: ElevatedButton(
                onPressed: () {
                  // Environmental Science button logic
                },
                child: Text('Enviornmental Science',style: TextStyle(fontSize: 30)),
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
