import 'package:login/business_logic/user_logic.dart';

import '../data/user.dart';

class UserController {
  UserController(this.logic);

  final UserLogic logic;

  Future<User> login(String userId, String password) {
    return logic.login(userId: userId, password: password);
  }
}