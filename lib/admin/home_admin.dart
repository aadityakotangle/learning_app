import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/admin/add_quiz.dart';
import 'package:learning_app/admin/userData.dart';
import 'package:learning_app/pages/login.dart';

class HomeAdmin extends StatefulWidget {
  const HomeAdmin({super.key});

  @override
  State<HomeAdmin> createState() => _HomeAdminState();
}

class _HomeAdminState extends State<HomeAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin Home",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 50.0,),

            GestureDetector(
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (contex)=>AddQuiz()));

              } ,
              child: Material(
                borderRadius:BorderRadius.circular(20),
                elevation: 5.0,

                child: Center(
                  child: Container(
                    width:150,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Center(child: Text("+  Add Quiz",style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.w200),)),
                      ],
                    ),


                  ),
                ),
              ),
            ),

            SizedBox(height: 50.0,),
            GestureDetector(
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (contex)=>UserData()));

              } ,
              child: Material(
                borderRadius:BorderRadius.circular(20),
                elevation: 5.0,

                child: Center(
                  child: Container(
                    width:150,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Center(child: Text("Users",style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.w200),)),
                      ],
                    ),


                  ),
                ),
              ),
            ),



            SizedBox(height: 50.0,),
            GestureDetector(
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (contex)=>LogIn()));

              } ,
              child: Material(
                borderRadius:BorderRadius.circular(20),
                elevation: 5.0,

                child: Center(
                  child: Container(
                    width:150,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Center(child: Text("Log Out",style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.w200),)),
                      ],
                    ),


                  ),
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }
}
