import 'package:books_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepo{
  Future<Either<Failure,U>>
}