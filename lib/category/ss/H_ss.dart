import 'package:flutter/material.dart';

class H_SS extends StatefulWidget {
  const H_SS({super.key});

  @override
  State<H_SS> createState() => _H_SSState();
}

class _H_SSState extends State<H_SS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'सामाजिक विज्ञान',
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
                child: Text(' मानवशास्त्र', style: TextStyle(fontSize: 30)),
              )),
              SizedBox(height: 20), // Gap between buttons
              Container(height: 50,width:400,child:  ElevatedButton(
                onPressed: () {
                  // Chemistry button logic
                },
                child: Text('राजनीति विज्ञान'
                    ,style: TextStyle(fontSize: 30)),
              )),
              SizedBox(height: 20), // Gap between buttons
              Container(height: 50,width:400,child:ElevatedButton(
                onPressed: () {
                  // Physics button logic
                },
                child: Text('मनोविज्ञान',style: TextStyle(fontSize: 30)),
              )),
              SizedBox(height: 20), // Gap between buttons
              Container( height: 50,width:400,
                child: ElevatedButton(
                  onPressed: () {
                    // Environmental Science button logic
                  },
                  child: Text('समाज शास्त्र',style: TextStyle(fontSize: 30)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
