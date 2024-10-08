import 'package:flutter/material.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isPasswordVisible = false;
  bool isValue = false;
  bool isApiCalling = false;
  bool _obscureText = true;
  bool isCheckBoxValue = false;
  bool isConfirmPasswordVisible = true;
  bool agreeToTerms = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Create  Account',style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.w700),),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height:MediaQuery.of(context).size.height*100/100,
            width: MediaQuery.of(context).size.width*100/100,
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*5/100,),
                Container(
                  margin: EdgeInsets.only(left: 25,right: 25),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Full Name",
                      style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*2/100 ,),
                Container(
                  width: MediaQuery.sizeOf(context).width * 90/ 100,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter your name',
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
                SizedBox(height: MediaQuery.of(context).size.height*3/100,),
                Container(
                  margin: EdgeInsets.only(left: 25,right: 25),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Email Address",
                      style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*2/100 ,),
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
                SizedBox(height: MediaQuery.of(context).size.height*2/100 ,),
                Container(
                  margin: EdgeInsets.only(left: 25,right: 25),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Phone Number",
                      style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*2/100 ,),
                Container(
                  width: MediaQuery.sizeOf(context).width * 90/ 100,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter Your Phone Number',
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
                SizedBox(height: MediaQuery.of(context).size.height*2/100 ,),
                Container(
                  margin: EdgeInsets.only(left: 25,right: 25),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Date of Birth",
                      style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*2/100 ,),
                Container(
                  width: MediaQuery.sizeOf(context).width * 90/ 100,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter Your DOB',
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
                SizedBox(height: MediaQuery.of(context).size.height*2/100 ,),
                Container(
                  margin: EdgeInsets.only(left: 25,right: 25),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Password",
                      style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*2/100 ,),
                Container(
                  width: MediaQuery.sizeOf(context).width * 90/ 100,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter Your password',
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
                SizedBox(height: MediaQuery.of(context).size.height*2/100 ,),
                Container(
                  margin: EdgeInsets.only(left: 25,right: 25),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      " Confirm Password",
                      style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*2/100 ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 90 / 100,
                  height: MediaQuery.sizeOf(context).height * 7 / 100,
                  child: TextFormField(
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      hintStyle:
                      const TextStyle(color:Color(0xffE1E6EB)),
                      hintText: "Comfirm Password",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xffE1E6EB), width: 1.0),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xffE1E6EB), width: 1.0),
                        borderRadius:
                        const BorderRadius.all(Radius.circular(6.0)),
                      ),
                      fillColor: Color(0xffE1E6EB),
                      counterText: '',

                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.black,
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
                  height: MediaQuery.of(context).size.height * 1.5 / 100,
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
                                  50 /
                                  100,
                              margin: const EdgeInsets.only(top: 6),
                              child: Text.rich(
                                TextSpan(
                                  text: 'I agree to be',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "Term & Conditions",
                                      style: const TextStyle(
                                          color: Colors.red,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          ),
                                )
                                    ]
                              )
                            )
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*2/100,),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
