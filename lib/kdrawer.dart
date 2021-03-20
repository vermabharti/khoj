import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer/hidden_drawer_menu.dart';
import 'package:hidden_drawer_menu/menu/item_hidden_menu.dart';
import 'package:hidden_drawer_menu/hidden_drawer/screen_hidden_drawer.dart';


void main() => runApp(MenuPage());
 
class MenuPageRoute extends CupertinoPageRoute {
  MenuPageRoute() : super(builder: (BuildContext context) => new MenuPage());
  @override
  Widget buildPage(
    BuildContext context, 
    Animation<double> animation,
    Animation<double> secondaryAnimation) {
      return new FadeTransition(opacity: animation, child: new MenuPage());
    }
  }
 
class MenuPage extends StatefulWidget {
  MenuPage({Key key}) : super(key: key);
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<ScreenHiddenDrawer> itens = new List();
  @override
  void initState() {
    itens.add(new ScreenHiddenDrawer(
      new ItemHiddenMenu(
        name: "Explore",
        colorLineSelected: Colors.black,
        baseStyle: TextStyle( color: Colors.white.withOpacity(0.5), fontSize: 25.0 ),
        selectedStyle: TextStyle(color: Colors.black),
      ),
      Center(
        child:Text('Hello world'),
      )));

    itens.add(new ScreenHiddenDrawer(
      new ItemHiddenMenu(
        name: "Traveling",
        colorLineSelected: Colors.black,
        baseStyle: TextStyle( color: Colors.white.withOpacity(0.5), fontSize: 25.0 ),
        selectedStyle: TextStyle(color: Colors.black),
      ),
      Center( 
        child:Text('hello World2'),
      )));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      initPositionSelected: 0,
      screens: itens,
      backgroundColorMenu: Color(0xFFffb600),
      slidePercent: 80.0,
      verticalScalePercent: 80.0,
      contentCornerRadius: 10.0,
      iconMenuAppBar: Icon(Icons.menu), 
      backgroundColorAppBar: Color(0xFFffb600),
      elevationAppBar: 0.0,
      //tittleAppBar: Color(0xFFffffff),
      //backgroundColorContent: Colors.black,
    );
  }
}
