import 'package:login/business_logic/user_logic.dart';
import 'package:login/data/user.dart';

class MockUserRepository extends UserRepository {
  @override
  Future<User> login(String userId, String password) {
    return Future.value(User(id: userId, name: 'hogehoge'));
  }
  
}