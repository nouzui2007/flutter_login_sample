import 'package:flutter/material.dart';
import 'package:login/repository/mock_user_repository.dart';
import 'package:login/view/user_controller.dart';

import '../business_logic/user_logic.dart';
import 'alert.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'ユーザー名を入力してください',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      suffixIcon: IconButton(
                          icon: Icon(_isObscure
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          })),
                ),
              ),
              Center(
                child: ElevatedButton(
                    onPressed: () async {
                      var controller = UserController(UserLogic(MockUserRepository()));
                      var user = await controller.login('user_id', 'password');
                      if (user.name == 'hogehoge') {
                        showDialog<void>(
                          context: context,
                          builder: (_) {
                            return AlertDialogSample(title: "ログイン成功", message: user.toString());
                          }
                        );
                      }
                    },
                    child: const Text('ログイン')
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

