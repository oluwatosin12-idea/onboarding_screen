import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'controllers/user_controller.dart';
import 'home_Screen.dart';

class GoogleFacebookSignin extends StatefulWidget {
  const GoogleFacebookSignin({super.key});

  @override
  State<GoogleFacebookSignin> createState() => _GoogleFacebookSigninState();
}

class _GoogleFacebookSigninState extends State<GoogleFacebookSignin> {
  @override
  Widget build(BuildContext context) {
    //final size =MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        //width: size.width*0.60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                style:
                ButtonStyle(
                  minimumSize: MaterialStateProperty.all<Size>(Size(162, 56)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Color(0xFF585252))

                    ),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Image(image: AssetImage('assets/images/facebook.png')),
                    SizedBox(width: 7,),
                    Text('Facebook',
                        style: TextStyle(
                            color: Color(0xFF585252),
                            fontSize: 14,
                            fontWeight: FontWeight.w500))
                  ],
                )),
            ElevatedButton(
                style:
                ButtonStyle(
                  minimumSize: MaterialStateProperty.all<Size>(Size(162, 56)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Color(0xFF585252))

                    ),
                  ),
                ),
                onPressed: () async {
                  try{
                    final user = await UserController.loginWithGoogle();
                    if(user != null && mounted){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomeScreen()));
                    }
                  } on FirebaseAuthException catch(error){
                    print(error.message);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(error.message?? 'something went wrong')));

                  }catch (error) {
                    print (error);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(error.toString())));
                  }
                },
                child: Row(
                  children: [
                    Image(image: AssetImage('assets/images/googleIcon.png')),
                    SizedBox(width: 7,),
                    Text('Google',
                        style: TextStyle(
                            color: Color(0xFF585252),
                            fontSize: 14,
                            fontWeight: FontWeight.w500))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
