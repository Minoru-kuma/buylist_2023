import 'package:buylist_2023/view/main_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});
  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void loginAuth() async {
    //今後ログイン認証用の関数を作成する予定
    await Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return MainPage(title: "コッチヤスイ");
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        //アカウント登録についても同一画面の再利用を行う予定
      ),
      body: Center(
          child: Container(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'メールアドレスを入力してください',
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'パスワードを入力してください',
                      ),
                    ),
                    ElevatedButton(
                      onPressed: loginAuth,
                      child: Text('ログイン'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('アカウント登録'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
