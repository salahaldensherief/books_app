import 'package:books_app/core/errors/failures.dart';
import 'package:books_app/features/auth/domain/entities/user_entity.dart';
import 'package:dartz/dartz.dart';


abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name);
  Future<Either<Failure,UserEntity>> loginUserWithEmailAndPassword(
      String email,String password
      );
}