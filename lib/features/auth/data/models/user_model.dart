import 'package:books_app/features/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({required super.name, required super.email, required super.uid});

  factory UserModel.fromfirebaseUser(firebaseUser) {
    if (firebaseUser == null) {
      throw Exception('Firebase user is null');
    }

    return UserModel(
      name: firebaseUser.displayName ?? '',
      email: firebaseUser.email ?? '',
      uid: firebaseUser.uid ?? '',
    );
  }
}
