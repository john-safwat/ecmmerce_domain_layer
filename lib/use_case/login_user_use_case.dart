
// 📦 Package imports:

import 'package:core/datasource_execution/results.dart';
import 'package:ecommerce_domain/entities/authentication/authentication_request.dart';
import 'package:ecommerce_domain/entities/authentication/authentication_response.dart';
import 'package:ecommerce_domain/repository/auth_repository.dart';

class LoginUserUseCase {
  final AuthRepository _authRepository;

  const LoginUserUseCase(this._authRepository);

  Future<Results<AuthenticationResponse>> call(
          AuthenticationRequest auth, bool saveUser) async =>
      await _authRepository.signIn(auth, saveUser);
}
