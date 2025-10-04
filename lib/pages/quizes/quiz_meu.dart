// import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:learning_app/pages/quizes/question.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Quiz_menu extends StatefulWidget {
  const Quiz_menu({super.key});

  @override
  State<Quiz_menu> createState() => _Quiz_menuState();
}

class _Quiz_menuState extends State<Quiz_menu> {



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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                  children: [Container(
                    height: 250,
                    padding: EdgeInsets.only(left: 20.0,top: 50.0),
                    decoration: BoxDecoration(
                      color: Color(0xFF2a2b31),borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // ClipRRect(
                        //     borderRadius: BorderRadius.circular(60),
                        //     child: Image.asset(
                        //       "images/boy.jpg",
                        //       height: 50,
                        //       width: 50,
                        //       fit: BoxFit.cover,
                        //     )),
                        SizedBox(width: 20.0,),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0,),
                          child: Text("Quize",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),

                      ],
                    ),

                  ),
                  ]
              ),
              SizedBox(height: 20,),
              Text("Top Quiz Category",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(height: 20.0,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20.0,),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Question(category: "English",)));

                      },
                      child: Material(
                        borderRadius:BorderRadius.circular(20),
                        elevation: 5.0,

                        child: Container(
                          width:150,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(20)),
                          child: Column(
                            children: [//ElevatedButton(onPressed: {}, child: Image.asset("images/boy.jpg",height: 80,width: 80,fit: BoxFit.cover,))
                              Image.asset("images/english.jpg",height: 80,width: 80,fit: BoxFit.cover,),
                              SizedBox(height: 20.0,),
                               Text("English",style: TextStyle(color: Colors.black,fontSize: 22.0,fontWeight: FontWeight.w200),)
                            ],
                          ),


                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Question(category: "Hindi",)));

                      },
                      child: Material(
                        borderRadius:BorderRadius.circular(20),
                        elevation: 5.0,

                        child: Container(
                          width:150,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Image.asset("images/hindi.jpg",height: 80,width: 80,fit: BoxFit.cover,),
                              SizedBox(height: 20.0,),
                              Text("हिंदी",style: TextStyle(color: Colors.black,fontSize: 22.0,fontWeight: FontWeight.w200),)
                            ],
                          ),


                        ),
                      ),
                    )
                  ],),
              ),
              SizedBox(height: 20.0,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20.0,),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Question(category: "Agri",)));

                      },
                      child: Material(
                        borderRadius:BorderRadius.circular(20),
                        elevation: 5.0,

                        child: Container(
                          width:150,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(20)),
                          child: Column(
                            children: [//ElevatedButton(onPressed: {}, child: Image.asset("images/boy.jpg",height: 80,width: 80,fit: BoxFit.cover,))
                              Image.asset("images/ag.jpg",height: 80,width: 80,fit: BoxFit.cover,),
                              SizedBox(height: 20.0,),
                       Text("Farming",style: TextStyle(color: Colors.black,fontSize: 22.0,fontWeight: FontWeight.w200),)
                            ],
                          ),


                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Question(category: "Krishi",)));

                      },
                      child: Material(
                        borderRadius:BorderRadius.circular(20),
                        elevation: 5.0,

                        child: Container(
                          width:150,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Image.asset("images/ag.jpg",height: 80,width: 80,fit: BoxFit.cover,),
                              SizedBox(height: 20.0,),
                            Text("कृषि",style: TextStyle(color: Colors.black,fontSize: 22.0,fontWeight: FontWeight.w200),)
                            ],
                          ),


                        ),
                      ),
                    )
                  ],),
              ),

              SizedBox(height: 20.0,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20.0,),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Question(category: "Science",)));

                      },
                      child: Material(
                        borderRadius:BorderRadius.circular(20),
                        elevation: 5.0,

                        child: Container(
                          width:150,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Image.asset("images/science.jpg",height: 80,width: 80,fit: BoxFit.cover,),
                              SizedBox(height: 20.0,),
                             Text("Science",style: TextStyle(color: Colors.black,fontSize: 22.0,fontWeight: FontWeight.w200),)
                            ],
                          ),


                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Question(category: "Vigyan",)));

                      },
                      child: Material(
                        borderRadius:BorderRadius.circular(20),
                        elevation: 5.0,

                        child: Container(
                          width:150,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Image.asset("images/science.jpg",height: 80,width: 80,fit: BoxFit.cover,),
                              SizedBox(height: 20.0,),
                        Text("विज्ञान",style: TextStyle(color: Colors.black,fontSize: 22.0,fontWeight: FontWeight.w200),)
                            ],
                          ),


                        ),
                      ),
                    )
                  ],),
              ),
              SizedBox(height: 20.0,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20.0,),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Question(category: "Social science",)));

                      },
                      child: Material(
                        borderRadius:BorderRadius.circular(20),
                        elevation: 5.0,

                        child: Container(
                          width:150,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Image.asset("images/ss.jpg",height: 80,width: 80,fit: BoxFit.cover,),
                              SizedBox(height: 20.0,),
                          Text("Social science",style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.w200),)
                            ],
                          ),


                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Question(category: "Samajik vigyan",)));

                      },
                      child: Material(
                        borderRadius:BorderRadius.circular(20),
                        elevation: 5.0,

                        child: Container(
                          width:150,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Image.asset("images/ss.jpg",height: 80,width: 80,fit: BoxFit.cover,),
                              SizedBox(height: 20.0,),
                           Text("सामाजिक \n विज्ञान",style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.w200),)

                              // Text("Aditya",style: TextStyle(color: Colors.black,fontSize: 22.0,fontWeight: FontWeight.w200),

                            ],
                          ),


                        ),
                      ),
                    )
                  ],),
              ),
               SizedBox(height: 20.0,),


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
