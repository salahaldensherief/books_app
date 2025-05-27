import 'package:books_app/core/errors/failures.dart';
import 'package:books_app/core/firebase_auth_service/firebase_auth_service.dart';
import 'package:books_app/features/auth/data/models/user_model.dart';
import 'package:books_app/features/auth/domain/entities/user_entity.dart';
import 'package:books_app/features/auth/domain/repos/auth_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/services/firebase_auth_service.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImpl(this.firebaseAuthService);
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) {
    var user = firebaseAuthService.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return right(UserModel.fromfirebaseUser(user));
  }
}
