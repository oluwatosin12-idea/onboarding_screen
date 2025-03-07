import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_Screen.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});


  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController _passwordController = TextEditingController();
  bool _isObscured = true;
  bool _isChecked = false;
  bool _rememberMe = false;

  @override
  void initState() {
    super.initState();
    _loadPreference();
  }
  Future<void> _loadPreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      _rememberMe =prefs.getBool('_rememberMe') ?? false;
      if (_rememberMe){
        _passwordController.text = prefs.getString('password')??'';
      }
    });
  }

  Future<void> _savePreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (_rememberMe){
     await prefs.setString('password',_passwordController.text);
    } else (){
      prefs.remove('password');
    };
    await prefs.setBool('remember me', _rememberMe);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 60, horizontal: 30)),
                Text('Welcome back!',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black)),
                Text(
                  'Please login to your account to continue',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 56,
                width: 162,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFF585252),
                    ),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white.withOpacity(0.1),
                          spreadRadius: 3.0)
                    ]),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      height: 28,
                      width: 29,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/facebook.png'))),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      'Facebook',
                      style: TextStyle(
                          color: Color(0xFF585252),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Container(
                height: 56,
                width: 162,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFF585252),
                    ),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white.withOpacity(0.1),
                          spreadRadius: 3.0)
                    ]),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      height: 28,
                      width: 29,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/twitter.png'))),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      'Twitter',
                      style: TextStyle(
                          color: Color(0xFF585252),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(margin: EdgeInsets.all(30),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(15)),
                TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color(0xFF585252)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color(0xFF585252)),
                      ),
                      hintText: 'johnsonjohn@gmail.com',
                      hintStyle: TextStyle(color: Colors.black),
                      labelText: 'Email'),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 40,),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Color(0xFF585252)),
                    ),
                    hintStyle: TextStyle(color: Colors.black),
                    labelText: 'Password',
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isObscured = !_isObscured;
                          });
                        },
                        icon: Icon(
                            _isObscured ? Icons.visibility_off : Icons.visibility)),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: _isObscured,
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.symmetric(vertical: 4,horizontal: 10)),
              Checkbox(value: _isChecked, onChanged: (bool? value){
                setState(() {
                  _isChecked = value ?? false;
                });
              }),
              Text('Remember me',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xFF585252)),),
              SizedBox(width: 120,),
              Text('Forgot Password?',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xFF585252)))
            ],
          ),
          SizedBox(height: 40,),
          Column(
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF2A63B9),minimumSize: Size(287, 50),
                    padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                  }, child: Text('Log In', style: TextStyle(fontSize: 20, color:Colors.white))),
              SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don’t have an account?',style: TextStyle(color: Color(0xFF585252),fontSize: 12,fontWeight: FontWeight.w500)),
                  SizedBox(width: 5,),
                  Text('Sign Up',style: TextStyle(color: Color(0xFF2A63B9), fontSize: 12, fontWeight: FontWeight.w600),)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
