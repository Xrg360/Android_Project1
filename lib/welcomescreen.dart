import 'package:flutter/material.dart';
import 'package:mits/home_screen.dart';
import 'package:mits/login_page.dart';
class welcomescreen extends StatelessWidget{
  const welcomescreen({Key? key}):super(key:key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child:Column(
          children: [
            Expanded(
              flex: 5,  //makes use of the 5/6 of the screen
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(50))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 200),
                    child: Column(
                    children: const[
                      Text("MITS",style: TextStyle(

                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        
                      ),),

                      Align(             //not much used you can remove it
                        alignment: Alignment.center,
                      child: Text("Its fun for \nyou\n Learn something new",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 25,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      ),
                    ],
                    ),
                  ),
            )),
            Expanded(
              flex: 2,   //make the 2/2+6 parts and uses 2 parts
                child: Container(
                   color: Colors.blueAccent,
                width: double.infinity,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(50))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                    children: [
                      Text("Hey,..\nLets make your request be a change",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Spacer(),
                      Row(
                        //button position
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          MaterialButton(
                            height: 60,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            color: Colors.lightBlue,
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                            }
                            , child:Text(
                            "Get Started",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),)
                        ],
                      )
                    ],
                  ),
                  ),
                ),
            ))
          ],
        ) ,
      ),
    );
  }
}