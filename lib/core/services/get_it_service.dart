import 'package:books_app/core/services/firebase_auth_service.dart';
import 'package:books_app/features/auth/data/repos/auth_repo_impl.dart';
import 'package:books_app/features/auth/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

class GetItService {
  final getit = GetIt.instance;
  void init() {
    getit.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
    getit.registerSingleton<AuthRepo>(
      AuthRepoImpl(firebaseAuthService: getit<FirebaseAuthService>()),
    );
  }
}
