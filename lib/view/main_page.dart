import 'package:buylist_2023/view/login_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.title});
  final String title;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  void pushShowPage() async {
    await Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return LoginPage(title: "ログイン");
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ElevatedButton(
              //最終的にこの部分は別記してForループで画面生成させたい（優先度最低）
              onPressed: () {},
              child: Text('価格を登録する'),
            ),
            //to itemInputPage
            ElevatedButton(
              onPressed: () {},
              child: Text('値段を見る'),
            ),
            // to showPage
            //to loginPage (constraction now)
          ],
        ),
      ),
    );
  }
}
