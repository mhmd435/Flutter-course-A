
import 'package:flutter/material.dart';
import 'package:flutter_course_a/Presentation/ui/ui_helper/BottomNav.dart';
import 'package:flutter_course_a/logic/providers/CryptoDataProvider.dart';
import 'package:provider/provider.dart';
import 'Homepage.dart';
import 'MarketViewPage.dart';
import 'ProfilePage.dart';
import 'WatchListPage.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({Key? key}) : super(key: key);

  @override
  _MainWrapperState createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {

  final PageController _myPage = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: const Icon(Icons.compare_arrows_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNav(controller: _myPage,),
      body: PageView(
        controller: _myPage,
        children: [
          ChangeNotifierProvider<CryptoDataProvider>(
              create: (_) => CryptoDataProvider(),
              child: HomePage()),
          MarketViewPage(),
          ProfilePage(),
          WatchListPage()
        ],
      ),
    );
  }
}
