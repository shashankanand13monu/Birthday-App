import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/constants.dart';


class HomeScreen extends StatefulWidget {
   HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void navigationTap(int page) {
    pageController.jumpToPage(page);
    setState(() {
      _page = page;
    });
  }

  int pageIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          children: homeScreenItems, //Global Variable
          controller: pageController,
          physics: NeverScrollableScrollPhysics(),
          onPageChanged: (page) {
            setState(() {
              _page = page;
            });
          },
        ),
        bottomNavigationBar: CupertinoTabBar(
          backgroundColor: Color.fromRGBO(0, 0, 0, 1),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _page == 0 ? Colors.white : Colors.grey,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: _page == 1 ? Colors.white : Colors.grey,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.alternate_email_rounded,
                color: _page == 2 ? Colors.white : Colors.grey,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: _page == 3 ? Colors.red : Colors.grey,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: _page == 4 ? Colors.white : Colors.grey,
              ),
              label: '',
            ),
          ],
          onTap: navigationTap,
        ),
      );
  }
}