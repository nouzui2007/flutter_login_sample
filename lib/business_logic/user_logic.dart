import 'package:login/data/user.dart';

abstract class UserRepository {
  Future<User> login(String userId, String password);
}

class UserLogic {
  UserLogic(this.repository);

  final UserRepository repository;

  Future<User> login({required String userId, required String password}) {
    return repository.login(userId, password);
  }
}