import 'package:flutter/material.dart';

class E_SS extends StatefulWidget {
  const E_SS({super.key});

  @override
  State<E_SS> createState() => _E_SSState();
}

class _E_SSState extends State<E_SS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'Social Science',
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
                child: Text('Anthropology', style: TextStyle(fontSize: 30)),
              )),
              SizedBox(height: 20), // Gap between buttons
              Container(height: 50,width:400,child:  ElevatedButton(
                onPressed: () {
                  // Chemistry button logic
                },
                child: Text('Political Science',style: TextStyle(fontSize: 30)),
              )),
              SizedBox(height: 20), // Gap between buttons
              Container(height: 50,width:400,child:ElevatedButton(
                onPressed: () {
                  // Physics button logic
                },
                child: Text('Psycology',style: TextStyle(fontSize: 30)),
              )),
              SizedBox(height: 20), // Gap between buttons
              Container( height: 50,width:400,
                child: ElevatedButton(
                  onPressed: () {
                    // Environmental Science button logic
                  },
                  child: Text('Sociology',style: TextStyle(fontSize: 30)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
