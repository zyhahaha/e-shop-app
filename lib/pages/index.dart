import 'package:flutter/material.dart';
// basic
import 'navBar.dart';
// page
import 'home/index.dart';
import 'cart/index.dart';
import 'user/index.dart';

class HomePageContainer extends StatefulWidget {
  HomePageContainer({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _HomePageContainer createState() => _HomePageContainer();
}

class _HomePageContainer extends State<HomePageContainer> {
  var pageIndex = 0;

  void onChangeNavIndex(navIndex) {
    setState(() {
      pageIndex = navIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentPage;
    if (pageIndex == 0) {
      currentPage = HomePage(title: 'aaaa');
    } else if (pageIndex == 1) {
      currentPage = CartPage(title: 'ccc');
    } else if (pageIndex == 2) {
      currentPage = MyPage(title: 'bbbb');
    } else {
      currentPage = Text('error page');
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: currentPage,
      bottomNavigationBar: VanNavigationBar(onChangeIndex: onChangeNavIndex),
    );
  }
}
