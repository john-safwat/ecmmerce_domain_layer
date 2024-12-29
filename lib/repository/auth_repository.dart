
import 'package:core/datasource_execution/results.dart';
import 'package:ecommerce_domain/entities/authentication/authentication_request.dart';
import 'package:ecommerce_domain/entities/authentication/authentication_response.dart';

abstract class AuthRepository {
  Future<Results<AuthenticationResponse>> signIn(
      AuthenticationRequest auth, bool saveUser);

}
