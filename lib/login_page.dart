

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class LoginPage extends StatefulWidget{
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() =>_LoginPageState();
}



class _LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            //hello user
              Icon(
                Icons.lock_outline_rounded,
                size: 80,
              ),
            Text("Hello Again!",
              style: GoogleFonts.bebasNeue(
                fontWeight: FontWeight.w300,
                fontSize: 48
              ),
            ),
            SizedBox(height: 5,),
            Text("Welcome Back, {name} get yourself logged in"),
            SizedBox(height: 50),
            //username
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:25.0 ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email"

                    ),
                  ),
                ),

                ),
              ),
              SizedBox(height: 10),
              //password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:25.0 ),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password"

                      ),
                    ),
                  ),

                ),
              ),

       
            //button
          SizedBox(height: 10),
// sign in button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
              color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(12)
              ),
            child: Center(
            child: Text(
            'Sign In',
              style: TextStyle(color: Colors.white),
            ), // Text
          ), // Center
        ), // Container
      ), // Padding
              SizedBox(height: 10),
            //not a member
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a Member?",style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),),
                  Text("Register now",style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold
                  ),)
                ],
              ),
            //o-auth
              SizedBox(height: 10,),
            Container(
              child: Column(
                children: [
                 Text("-----OR-----",textAlign: TextAlign.center),
                 SizedBox(height: 10,),
                 Image.asset("assets/google.png",fit: BoxFit.contain,width: 50,)
                ],
              ),

            ),

            ],


          ),

        ),
      ),
    );
  }

}