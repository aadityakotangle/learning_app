import 'package:flutter/material.dart';

class H_science extends StatefulWidget {
  const H_science({super.key});

  @override
  State<H_science> createState() => _H_scienceState();
}

class _H_scienceState extends State<H_science> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                "विज्ञान",
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
                child: Text('जीवविज्ञान', style: TextStyle(fontSize: 30)),
              )),
              SizedBox(height: 20), // Gap between buttons
              Container(height: 50,width:400,child:  ElevatedButton(
                onPressed: () {
                  // Chemistry button logic
                },
                child: Text('रसायन विज्ञान',style: TextStyle(fontSize: 30)),
              )),
              SizedBox(height: 20), // Gap between buttons
              Container(height: 50,width:400,child:ElevatedButton(
                onPressed: () {
                  // Physics button logic
                },
                child: Text('भौतिक विज्ञान',style: TextStyle(fontSize: 30)),
              )),
              SizedBox(height: 20), // Gap between buttons
              Container( height: 50,width:400,
                child: ElevatedButton(
                  onPressed: () {
                    // Environmental Science button logic
                  },
                  child: Text('पर्यावरण विज्ञान',style: TextStyle(fontSize: 30)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
