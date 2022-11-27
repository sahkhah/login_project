import 'package:firebase_auth/firebase_auth.dart';
import 'package:login_project/src/exceptions/signup_exception.dart';

class AuthenticationRepository {
  final _auth = FirebaseAuth.instance;

  
  User?  getCurrentUser(){
    return _auth.currentUser; 
  }

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      final ex = SignupWithEmailAndPasswordException.code(e.code);
      print('FIREBASE AUTH: ${ex.message}');
    }catch(_){
      final ex = SignupWithEmailAndPasswordException();
      print('FIREBASE AUTH: ${ex.message}');
    }
  }

  Future<void> loginWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      final ex = SignupWithEmailAndPasswordException.code(e.code);
      print('FIREBASE AUTH: ${ex.message}');
    }catch(_){
      final ex = SignupWithEmailAndPasswordException();
      print('FIREBASE AUTH: ${ex.message}');
    }
  }

  Future<void> logout() async {
    try {
      await _auth.signOut();
    } on FirebaseAuthException catch (e) {
      final ex = SignupWithEmailAndPasswordException.code(e.code);
      print('FIREBASE AUTH: ${ex.message}');
    }catch(_){
      final ex = SignupWithEmailAndPasswordException();
      print('FIREBASE AUTH: ${ex.message}');
    }
  }
}
