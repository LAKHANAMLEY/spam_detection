import 'package:flutter/material.dart';
import 'register_screen.dart';



class EmailLogin extends StatefulWidget {
  const EmailLogin({super.key});

  @override
  State<EmailLogin> createState() => _EmailLoginState();
}

class _EmailLoginState extends State<EmailLogin> {
  int SelectTab = 0;
  int Toogletab=0;
  bool _obscureText = true;
  bool isCheckBoxValue = false;
  bool isPasswordVisible = true;
  bool isConfirmPasswordVisible = true;
  bool isApiCalling = false;
  bool agreeToTerms = false;
  String? _selectedValue;
  final List<String> _items = ['Franch', 'India', 'Nepal'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
     title: Text('Signup',style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.w700),),

 ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
              SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                  setState(() {
                    Toogletab = 1;
                  });
                },
                child:  Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.all(5),
                    height: 40,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Color(0xff2E0703),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Container(
                          height: 25,
                          width: 95,
                          decoration: BoxDecoration(
                              color: Toogletab == 1 ? Color(0xffDC3737) : Color(0xff2E0703),
                              borderRadius: BorderRadius.circular(18)
                          ),
                          child: Center(child: Text("Email",
                            style: TextStyle(color: Colors.white, fontSize: 12),)),
                        ),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                Toogletab = 0;
                              });
                            },
                            child:  Container(
                              height: 25,
                              width: 110,
                              decoration: BoxDecoration(
                                  color: Toogletab == 1 ? Color(0xff2E0703) : Color(0xffDC3737),
                                  borderRadius: BorderRadius.circular(18)
                              ),
                              child: Center(child: Text('Phone Number', style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),)),
                            )

                        ),
                      ],
                    ),
                  ),
                ),
              ),
                SizedBox(height: MediaQuery.of(context).size.height*10/100,),
                if (Toogletab == 1) ...[
                  Container(
                    margin: EdgeInsets.only(left: 20,right: 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Email",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 90/ 100,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter your email',
                        hintStyle: const TextStyle(color: Color(0xffE1E6EB)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                              width: 0.5, color: Color(0xffE1E6EB)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xffE1E6EB), width: 1.0),
                          borderRadius:
                          const BorderRadius.all(Radius.circular(12)),
                        ),
                        fillColor: Color(0xffE1E6EB),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    margin: EdgeInsets.only(left: 3,right: 3),
                    child:Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Password',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),

                  ),
                  SizedBox(height: 5,),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 90/ 100,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter your Password',
                        hintStyle: const TextStyle(color: Color(0xffE1E6EB)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                              width: 0.5, color: Color(0xffE1E6EB)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xffE1E6EB), width: 1.0),
                          borderRadius:
                          const BorderRadius.all(Radius.circular(12)),
                        ),
                        fillColor: Color(0xffE1E6EB),
                        counterText: '',
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Color(0xffE1E6EB),
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 2 / 100,
                  ),

                  SizedBox(
                    width: MediaQuery.of(context).size.width * 90 / 100,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isCheckBoxValue = !isCheckBoxValue;
                            });
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    5 /
                                    100,
                                width: MediaQuery.of(context).size.width *
                                    5 /
                                    100,
                                child: isCheckBoxValue == false
                                    ? Image.asset('assets/images/ic_checkbox.png',
                                    fit: BoxFit.contain)
                                    : Image.asset('assets/images/ic_activecheck.png',
                                    fit: BoxFit.contain),
                              ),
                              SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      3 /
                                      100),
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    55 /
                                    100,
                                margin: const EdgeInsets.only(top: 6),
                                child: Text('Remember me',style: TextStyle(color: Color(0xffB2B8BD)),),

                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: TextButton(
                                    child: Text(
                                      "Forgot password",
                                      style: const TextStyle(
                                          fontSize: 14,
                                          color: Colors.red,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    onPressed: () {
                                      /* Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => const ForgotPassword()),

                                      );

                                      */
                                    }),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*5/100,),

                  Container(
                    width: MediaQuery.sizeOf(context).width * 90 / 100,
                    height: MediaQuery.sizeOf(context).width * 8/ 100,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Continue',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                        ),
                        minimumSize: Size(double.infinity, 50),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*2/100,),
                  Text('Or continue with',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),),
                  SizedBox(height: MediaQuery.of(context).size.height*2/100,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/ic_google.png",height:MediaQuery.of(context).size.height*8/100 ),
                      SizedBox(width: MediaQuery.of(context).size.width*2/100 ),
                      Image.asset('assets/images/ic_mac.png',height:MediaQuery.of(context).size.height*8/100 ,),

                    ],
                  ),
                  SizedBox(height:MediaQuery.of(context).size.height*5/100 ,),
                  Text("Already have an account",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w100),)

                ] else ...[
                  Container(
                    margin: EdgeInsets.only(left: 20,right: 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Email",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 90/ 100,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'France',
                        hintStyle: const TextStyle(color: Color(0xffE1E6EB)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                              width: 0.5, color: Color(0xffE1E6EB)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xffE1E6EB), width: 1.0),
                          borderRadius:
                          const BorderRadius.all(Radius.circular(12)),
                        ),
                        prefixIcon: Image.asset('assets/images/ic_france.png',height:MediaQuery.of(context).size.height*0.05/100 ,),
                        fillColor: Color(0xffE1E6EB),
                        suffixIcon: Image.asset('assets/images/ic_dropdown_1.png',height:MediaQuery.of(context).size.height*0.5/100 ,)
                      ),
                    ),
                  ),

    SizedBox(height: MediaQuery.of(context).size.height*2/100,),
                  Container(
                    margin: EdgeInsets.only(left: 15,right: 15),
                    child:Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Phone Number',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),

                  SizedBox(height:MediaQuery.of(context).size.height*2/100 ,),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 90/ 100,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter your Number',
                        prefix: Text('+33',style: TextStyle(color:Color(0xffE1E6EB)),),
                        hintStyle: const TextStyle(color: Color(0xffE1E6EB)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                              width: 0.5, color: Color(0xffE1E6EB)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xffE1E6EB), width: 1.0),
                          borderRadius:
                          const BorderRadius.all(Radius.circular(12)),
                        ),
                        fillColor: Color(0xffE1E6EB),
                        counterText: '',
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: MediaQuery.of(context).size.height*6/100,
                    width: MediaQuery.of(context).size.width*90/100,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                      },
                      child: Text(
                        'Continue',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                        ),

                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*2/100,),
                  Text('Or continue with',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),),
                  SizedBox(height: MediaQuery.of(context).size.height*2/100,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/ic_google.png",height:MediaQuery.of(context).size.height*8/100 ),
                      SizedBox(width: MediaQuery.of(context).size.width*2/100 ),
                      Image.asset('assets/images/ic_mac.png',height:MediaQuery.of(context).size.height*8/100 ,),

                    ],
                  ),
                  SizedBox(height:MediaQuery.of(context).size.height*5/100 ,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
                    },

                      child: Text("Create an account",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w100),))
                ],
              ],
            ),

          ),
          )
        )

      );
  }
}
