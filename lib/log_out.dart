import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onboarding_screen/controllers/user_controller.dart';
import 'package:onboarding_screen/sign_In.dart';

class LogOut extends StatefulWidget {
  const LogOut({super.key});

  @override
  State<LogOut> createState() => _LogOutState();
}

class _LogOutState extends State<LogOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              foregroundImage: NetworkImage(UserController.user?.photoURL ?? ''),
            ),
            Text(UserController.user?.displayName ??''),
            ElevatedButton(
                style:ButtonStyle(backgroundColor:WidgetStatePropertyAll(Colors.black) ) ,
                onPressed: ()  async {
              await UserController.signOut();
              if(mounted){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> SignIn()));

              }
            }, child: Text('Log Out',style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
                color: Colors.white)))
          ],
        ),
      ),
    );
  }
}
