import 'package:firebase_auth/firebase_auth.dart';

class Authservice {
  //get instance of firebase auth
  final FirebaseAuth _firebaseAuth=FirebaseAuth.instance;

  //get current user
  User? getcurrentUser() {
    return _firebaseAuth.currentUser;
  }

  //sign in
  Future<UserCredential> signinwithEmailPassword(String email,password) async{
    //try sign user in
    try{
      //sign user in
      UserCredential userCredential=await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);


    return userCredential;
    }
     //catch any erros
    on FirebaseAuthException  catch(e) {
        throw Exception(e.code);
    }
  }

  //sign up
   Future<UserCredential> signUpwithEmailPassword(String email,password) async{
    //try sign user up
    try{
      UserCredential userCredential=
      await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);


    return userCredential;
    }
     //catch any erros
    on FirebaseAuthException  catch(e) {
        throw Exception(e.code);
    }
  }


  //signout
  Future<void> signOut() async{
    return await _firebaseAuth.signOut();
  }


}