import 'package:bloc/bloc.dart';
import 'package:books_app/features/auth/domain/entities/user_entity.dart';
import 'package:books_app/features/auth/domain/repos/auth_repo.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.authRepo) : super(LoginInitial());

  final AuthRepo authRepo;

  Future<void> logInUserWithEmailAndPassword(String email, String password) async {
    emit(LoginLoading());

    final result = await authRepo.loginUserWithEmailAndPassword(email, password);

    result.fold(
          (failure) => emit(LoginFailure(failure.massege)),
          (user) {
            saveUserLoggedIn();
            emit(LoginSuccess(user));

          });
  }
  Future<void> saveUserLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', true);
  }
}
