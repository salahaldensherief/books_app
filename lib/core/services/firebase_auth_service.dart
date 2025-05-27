import 'package:books_app/core/errors/custom_exeption.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw CustomExeption(message: 'the password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomExeption(
          message: 'The account already exists for that email.',
        );
      } else {
        throw CustomExeption(message: 'something went wrong, try later.');
      }
    } catch (e) {
      throw CustomExeption(message: 'something went wrong, try later.');
    }
  }
}
