import 'package:flutter/material.dart';
import 'email_login.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*15/100,),
          Container(
            margin: EdgeInsets.all(8),
            child: Image.asset("assets/images/welcome_image.png",height: MediaQuery.of(context).size.height*22/100,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50,right: 50),
            child: Center(child: Text("Welcome Back to TEXASEDITION,Lets login for explore continues.",textAlign:TextAlign.center,style: TextStyle(color: Colors.grey,fontWeight:FontWeight.w100,fontSize: 15,)),
          ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*10/100,),
          ElevatedButton(
              onPressed: (){
               /* Navigator.push(
                    context,
                    MaterialPageRoute(builder:(Context)=> Login()));

                */
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(205, 60),
                  backgroundColor:Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  )
              ),
              child: Text('Create an account',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),)),
          SizedBox(height: MediaQuery.of(context).size.height*3/100,),
          GestureDetector(
           onTap: (){
            Navigator.push(
                 context,
                 MaterialPageRoute(builder:(Context)=> EmailLogin()));

             },
            child: Container(
              height: MediaQuery.of(context).size.height*8/100,
              width: MediaQuery.of(context).size.width*58/100,
              child: Center(child: Text('Already a member?',style: TextStyle(color: Colors.black),)),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Color(0xffE1E6EB))
              ),
            ),
          )




        ],
      ),
    );
  }
}
