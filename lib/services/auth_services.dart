import 'package:aquascaper_app/models/user_model.dart';
import 'package:aquascaper_app/services/user_services.dart';
import 'package:aquascaper_app/services/extensions.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<SignInSignUpResult> signUp(
      String email, String password, String name) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      UserModel user = result.user.convertToUser(
        name: name,
      );

      await UserServices.updateUser(user);

      return SignInSignUpResult(user: user);
    } on FirebaseAuthException catch (e) {
      return SignInSignUpResult(message: e.toString());
    }
  }

  static Future<SignInSignUpResult> signIn(
    String email,
    String password,
  ) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      UserModel user = await result.user.fromFireStore();

      return SignInSignUpResult(user: user);
    } on FirebaseAuthException catch (e) {
      return SignInSignUpResult(message: e.toString());
    }
  }

  static Future<void> signOut() async {
    await _auth.signOut();
  }

  static Future<SignInSignUpResult> resetEmail(String email) async {
    await _auth.sendPasswordResetEmail(email: email);
  }

  static Stream<User> get userStream => _auth.authStateChanges();

  static Future<SignInSignUpResult> inputData() {
    final User user = _auth.currentUser;
  }
}

class SignInSignUpResult {
  final UserModel user;
  final String message;

  SignInSignUpResult({
    this.user,
    this.message,
  });
}
