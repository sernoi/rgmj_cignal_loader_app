import 'package:firebase_auth/firebase_auth.dart' as fire;
import 'package:rgmj_cignal_loader_app/models/user.dart';

class AuthService {
  final fire.FirebaseAuth _auth = fire.FirebaseAuth.instance;

  User _userFromFirebaseUser(fire.User user) {
    return user != null ? User(uid: user.uid) : null;
  }

  Stream<User> get user {
    return _auth.authStateChanges().map(_userFromFirebaseUser);
  }

  Future signInAnon() async {
    try {
      fire.UserCredential result = await _auth.signInAnonymously();
      fire.User user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());

    }
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}