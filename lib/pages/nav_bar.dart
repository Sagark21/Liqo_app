import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liqo_app/pages/category_page.dart';
import 'package:liqo_app/pages/favourite_page.dart';
import 'package:liqo_app/pages/homepage.dart';
import 'package:liqo_app/pages/more_page.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class NavBar extends StatelessWidget {
  NavBar({ Key? key }) : super(key: key);

  PersistentTabController _controller = PersistentTabController(initialIndex: 0);
   List<Widget> _buildScreens() {
        return [
          HomePage(),
          CategoryPage(),
          FavouritePage(),
          MorePage()
        ];
    }
    List<PersistentBottomNavBarItem> _navBarsItems() {
        return [
            PersistentBottomNavBarItem(
                icon: Icon(CupertinoIcons.home,size: 30,),
               
                activeColorPrimary: CupertinoColors.activeOrange,
                inactiveColorPrimary: CupertinoColors.systemGrey,
            ),
             PersistentBottomNavBarItem(
                icon: Icon(Icons.auto_awesome_mosaic_outlined,size: 30,),
                
                activeColorPrimary: CupertinoColors.activeOrange,
                inactiveColorPrimary: CupertinoColors.systemGrey,
            ),
             PersistentBottomNavBarItem(
                icon: Icon(Icons.grade_outlined,size: 30,),
                
                activeColorPrimary: CupertinoColors.activeOrange,
                inactiveColorPrimary: CupertinoColors.systemGrey,
            ),
            
            PersistentBottomNavBarItem(
                icon: Icon(Icons.format_align_justify_outlined,size: 30,),
                
                activeColorPrimary: CupertinoColors.activeOrange,
                inactiveColorPrimary: CupertinoColors.systemGrey,
            ),
        ];
    }




  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white, 
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true, 
        hideNavigationBarWhenKeyboardShows: true,
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: ItemAnimationProperties(
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style3, 
    );
  }
}