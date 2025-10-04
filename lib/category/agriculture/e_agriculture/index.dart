import 'package:flutter/material.dart';
import 'package:learning_app/category/agriculture/e_agriculture/new.dart';

import 'aadti.dart';

class E_agriculture extends StatefulWidget {
  const E_agriculture({super.key});

  @override
  State<E_agriculture> createState() => _E_agricultureState();
}

class _E_agricultureState extends State<E_agriculture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffedf3f6),
      appBar: AppBar(
        title: Text("Indexes",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
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
                        ClipRRect(
                            borderRadius: BorderRadius.circular(60),
                            child: Image.asset(
                              "images/boy.jpg",
                              height: 50,
                              width: 50,
                              fit: BoxFit.cover,
                            )),
                        SizedBox(width: 20.0,),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text("Shiva Gupta",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),

                      ],
                    ),

                  ),
                  ]
              )
              ,
              SizedBox(height: 20,),
              Text("Related Content",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(height: 20.0,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20.0,),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Material(
                    borderRadius:BorderRadius.circular(20),
                    elevation: 5.0,
        
                    child: Container(
                      width:150,
                      padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(20)),
                        child: Column(
                          children: [//ElevatedButton(onPressed:() {}, child: Image.asset("images/boy.jpg",height: 80,width: 80,fit: BoxFit.cover,)),
                            Image.asset("images/boy.jpg",height: 80,width: 80,fit: BoxFit.cover,),
                            SizedBox(height: 20.0,),
                           ElevatedButton(onPressed:(){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>view()));
                           },
                               child:Text("Aditya",style: TextStyle(color: Colors.black,fontSize: 22.0,fontWeight: FontWeight.w200),) )
                           // Text("Aditya",style: TextStyle(color: Colors.black,fontSize: 22.0,fontWeight: FontWeight.w200),)
                          ],
                        ),
        
        
                    ),
                  ),
                  Material(
                    borderRadius:BorderRadius.circular(20),
                    elevation: 5.0,
        
                    child: Container(
                      width:150,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Image.asset("images/boy.jpg",height: 80,width: 80,fit: BoxFit.cover,),
                          SizedBox(height: 20.0,),
                          Text("Aditya",style: TextStyle(color: Colors.black,fontSize: 22.0,fontWeight: FontWeight.w200),)
                        ],
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
                    Material(
                      borderRadius:BorderRadius.circular(20),
                      elevation: 5.0,
        
                      child: Container(
                        width:150,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Image.asset("images/boy.jpg",height: 80,width: 80,fit: BoxFit.cover,),
                            SizedBox(height: 20.0,),
                            Text("Aditya",style: TextStyle(color: Colors.black,fontSize: 22.0,fontWeight: FontWeight.w200),)
                          ],
                        ),
        
        
                      ),
                    ),
                    Material(
                      borderRadius:BorderRadius.circular(20),
                      elevation: 5.0,
        
                      child: Container(
                        width:150,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Image.asset("images/boy.jpg",height: 80,width: 80,fit: BoxFit.cover,),
                            SizedBox(height: 20.0,),
                            Text("Aditya",style: TextStyle(color: Colors.black,fontSize: 22.0,fontWeight: FontWeight.w200),)
                          ],
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
                    Material(
                      borderRadius:BorderRadius.circular(20),
                      elevation: 5.0,
        
                      child: Container(
                        width:150,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Image.asset("images/boy.jpg",height: 80,width: 80,fit: BoxFit.cover,),
                            SizedBox(height: 20.0,),
                            Text("Aditya",style: TextStyle(color: Colors.black,fontSize: 22.0,fontWeight: FontWeight.w200),)
                          ],
                        ),
        
        
                      ),
                    ),
                    Material(
                      borderRadius:BorderRadius.circular(20),
                      elevation: 5.0,
        
                      child: Container(
                        width:150,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Image.asset("images/boy.jpg",height: 80,width: 80,fit: BoxFit.cover,),
                            SizedBox(height: 20.0,),
                            Text("Aditya",style: TextStyle(color: Colors.black,fontSize: 22.0,fontWeight: FontWeight.w200),)
                          ],
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
                    Material(
                      borderRadius:BorderRadius.circular(20),
                      elevation: 5.0,
        
                      child: Container(
                        width:150,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Image.asset("images/boy.jpg",height: 80,width: 80,fit: BoxFit.cover,),
                            SizedBox(height: 20.0,),
                            Text("Aditya",style: TextStyle(color: Colors.black,fontSize: 22.0,fontWeight: FontWeight.w200),)
                          ],
                        ),
        
        
                      ),
                    ),
                    Material(
                      borderRadius:BorderRadius.circular(20),
                      elevation: 5.0,
        
                      child: Container(
                        width:150,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Image.asset("images/boy.jpg",height: 80,width: 80,fit: BoxFit.cover,),
                            SizedBox(height: 20.0,),
                            Text("Aditya",style: TextStyle(color: Colors.black,fontSize: 22.0,fontWeight: FontWeight.w200),)
                          ],
                        ),
        
        
                      ),
                    )
                  ],),
              )
        
              
            ],
            
          ),
        
        ),
      ),
    );
  }
}
