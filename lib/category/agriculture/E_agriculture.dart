import 'package:flutter/material.dart';

import 'e_agriculture/new.dart';

class E_agr extends StatefulWidget {
  const E_agr({super.key});

  @override
  State<E_agr> createState() => _E_agrState();
}

class _E_agrState extends State<E_agr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Select Subjects',
          style: TextStyle(
            color: Colors.blueGrey, // Title color set to green
            fontSize: 20, // Title size set to medium
          ),
        ),
        centerTitle: true, // Title centered
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BookView(pathPDF: "asset/agronomy.pdf")));

                  // Science button logic
                },
                child: Text('Agronomy', style: TextStyle(fontSize: 30)),
              ),
              //SizedBox(height: 0), // Gap of 50 between buttons
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BookView(pathPDF: "asset/AG_EC.pdf")));
                  // Social Science button logic
                },
                child: Text('Agricultural Economics',style: TextStyle(fontSize: 30)),
              ),
              //SizedBox(height:0), // Gap of 50 between buttons
              ElevatedButton(
                onPressed: () {
                  // Maths button logic
                },
                child: Text('Entomology',style: TextStyle(fontSize: 30)),
              ),
              //SizedBox(height: 0),
              ElevatedButton(
                onPressed: (){
                },
                child: Text('Soil Science',style: TextStyle(fontSize: 30)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
