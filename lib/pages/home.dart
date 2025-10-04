import 'package:flutter/material.dart';
import 'package:learning_app/category/agriculture/E_agriculture.dart';
import 'package:learning_app/category/agriculture/H_agriculture.dart';
import 'package:learning_app/category/agriculture/e_agriculture/aadti.dart';
import 'package:learning_app/category/agriculture/e_agriculture/new.dart';
import 'package:learning_app/category/hindi/hindi.dart';
import 'package:learning_app/category/science/e_science.dart';
import 'package:learning_app/category/science/h_science.dart';
import 'package:learning_app/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffedf3f6),
      // appBar: AppBar(
      //
      // ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(children: [
                Container(
                  height: 250,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Color(0xFF2a2b31),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // ClipRRect(
                        //     borderRadius: BorderRadius.circular(60),
                        //     child: Image.asset(
                        //       "images/boy.jpg",
                        //       height: 50,
                        //       width: 50,
                        //       fit: BoxFit.cover,
                        //     )),

                        Text(
                          "Welcome",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                              fontWeight: FontWeight.w500),
                        ),
                        TextField(
                          onChanged: (value) {
                            setState(() {
                              // _searchText = value;
                            });
                          },
                          decoration: InputDecoration(
                            hintText: 'Search...',
                            hintStyle: TextStyle(color: Colors.white),
                            prefixIcon: Icon(Icons.search, color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          style: TextStyle(color: Colors.white),
                        ),

                      ],
                    ),
                  ),
                ),
              ]),
              SizedBox(
                height: 20,
              ),
              Text(
                "Related Content",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Material(
                      borderRadius: BorderRadius.circular(20),
                      elevation: 5.0,
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            //ElevatedButton(onPressed: {}, child: Image.asset("images/boy.jpg",height: 80,width: 80,fit: BoxFit.cover,))
                            Image.asset(
                              "images/english.jpg",
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => BookView(
                                              pathPDF:
                                                  "asset/English_grm.pdf")));
                                },
                                child: Text(
                                  "English",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.w200),
                                ))
                          ],
                        ),
                      ),
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(20),
                      elevation: 5.0,
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Image.asset(
                              "images/hindi.jpg",
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Hindi()));
                                },
                                child: Text(
                                  "हिंदी",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.w200),
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Material(
                      borderRadius: BorderRadius.circular(20),
                      elevation: 5.0,
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            //ElevatedButton(onPressed: {}, child: Image.asset("images/boy.jpg",height: 80,width: 80,fit: BoxFit.cover,))
                            Image.asset(
                              "images/ag.jpg",
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => E_agr()));
                                },
                                child: Text(
                                  "Farming",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.w200),
                                ))
                          ],
                        ),
                      ),
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(20),
                      elevation: 5.0,
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Image.asset(
                              "images/ag.jpg",
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => H_agr()));
                                },
                                child: Text(
                                  "कृषि",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.w200),
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Material(
                      borderRadius: BorderRadius.circular(20),
                      elevation: 5.0,
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Image.asset(
                              "images/science.jpg",
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (contex) => E_science()));
                                },
                                child: Text(
                                  "Science",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.w200),
                                ))
                          ],
                        ),
                      ),
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(20),
                      elevation: 5.0,
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Image.asset(
                              "images/science.jpg",
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => H_science()));
                                },
                                child: Text(
                                  "विज्ञान",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.w200),
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Material(
                      borderRadius: BorderRadius.circular(20),
                      elevation: 5.0,
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Image.asset(
                              "images/ss.jpg",
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "Social science",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w200),
                                ))
                          ],
                        ),
                      ),
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(20),
                      elevation: 5.0,
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Image.asset(
                              "images/ss.jpg",
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "सामाजिक विज्ञान",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w200),
                                ))

                            // Text("Aditya",style: TextStyle(color: Colors.black,fontSize: 22.0,fontWeight: FontWeight.w200),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // SizedBox(height: 20.0,),
              // Padding(
              //   padding: const EdgeInsets.only(left: 20.0,right: 20.0,),
              //   child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: [
              //       Material(
              //         borderRadius:BorderRadius.circular(20),
              //         elevation: 5.0,
              //
              //         child: Container(
              //           width:150,
              //           padding: EdgeInsets.all(10),
              //           decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(20)),
              //           child: Column(
              //             children: [
              //               Image.asset("images/boy.jpg",height: 80,width: 80,fit: BoxFit.cover,),
              //               SizedBox(height: 20.0,),
              //               Text("Aditya",style: TextStyle(color: Colors.black,fontSize: 22.0,fontWeight: FontWeight.w200),)
              //             ],
              //           ),
              //
              //
              //         ),
              //       ),
              //       Material(
              //         borderRadius:BorderRadius.circular(20),
              //         elevation: 5.0,
              //
              //         child: Container(
              //           width:150,
              //           padding: EdgeInsets.all(10),
              //           decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(20)),
              //           child: Column(
              //             children: [
              //               Image.asset("images/boy.jpg",height: 80,width: 80,fit: BoxFit.cover,),
              //               SizedBox(height: 20.0,),
              //               Text("Aditya",style: TextStyle(color: Colors.black,fontSize: 22.0,fontWeight: FontWeight.w200),)
              //             ],
              //           ),
              //
              //
              //         ),
              //       )
              //     ],),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
