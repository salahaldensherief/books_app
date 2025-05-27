import 'package:books_app/core/errors/custom_exeption.dart';
import 'package:books_app/core/errors/failures.dart';
import 'package:books_app/features/auth/data/models/user_model.dart';
import 'package:books_app/features/auth/domain/entities/user_entity.dart';
import 'package:books_app/features/auth/domain/repos/auth_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/services/firebase_auth_service.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImpl({required this.firebaseAuthService});

  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    try {
      final user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(UserModel.fromfirebaseUser(user));
    } on CustomExeption catch (e) {
      return left(ServerFailure(massege: e.toString()));
    }
  }
}
