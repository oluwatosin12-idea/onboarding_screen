import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';

class UserController{
  static User? user = FirebaseAuth.instance.currentUser;

  static Future <User?> loginWithGoogle() async {
    final googleAccount = await GoogleSignIn().signIn();


    final GoogleSignInAuthentication? googleAuth = await googleAccount?.authentication;

    //signing in with firebase auth
    final credential = GoogleAuthProvider.credential(
      idToken: googleAuth?.idToken,
      accessToken: googleAuth?.accessToken,
    );
    final userCredential = await FirebaseAuth.instance.signInWithCredential(
        credential);


   return userCredential.user;
  }

 static Future <void> signOut()async {
    await FirebaseAuth.instance.signOut();
    await GoogleSignIn().signOut();
  }


}