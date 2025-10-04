import 'package:flutter/material.dart';

class H_agr extends StatefulWidget {
  const H_agr({super.key});

  @override
  State<H_agr> createState() => _H_agrState();
}

class _H_agrState extends State<H_agr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Select Subjects',
          style: TextStyle(
            color: Colors.blueGrey, // Title color set to green
            fontSize: 65, // Title size set to medium
          ),
        ),
        centerTitle: true, // Title centered
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {

                  // Science button logic
                },
                child: Text('कृषिविज्ञान'),
              ),
              SizedBox(height: 50), // Gap of 50 between buttons
              ElevatedButton(
                onPressed: () {
                  // Social Science button logic
                },
                child: Text('कृषि अर्थशास्त्र'),
              ),
              SizedBox(height: 50), // Gap of 50 between buttons
              ElevatedButton(
                onPressed: () {
                  // Maths button logic
                },
                child: Text('कीटविज्ञान'),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: (){
                },
                child: Text('मृदा विज्ञान'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
