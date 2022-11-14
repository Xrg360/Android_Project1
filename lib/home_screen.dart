import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}):super(key:key);


  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/login.png'),fit: BoxFit.cover
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35,top: 150),
              child: Text(
                "Welcome \n{name}",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  fontSize: 40
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height*0.5,
                right: 30,
                left: 30),
                child: Column(

                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Username",
                        fillColor: Colors.redAccent.shade100,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        )
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(decoration: InputDecoration(
                            hintText: "Password",
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            )
                        ),)
                  ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
