import 'package:flutter/material.dart'; 
 
void main() => runApp(BottomBar());

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold( 
           floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.swap_horiz), 
            backgroundColor:Color(0xFF0CBABA),
            onPressed: () {},),
            bottomNavigationBar: BottomAppBar(
              shape: CircularNotchedRectangle(),
              notchMargin: 6.0,
              child: new Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,            
              children: <Widget>[
              IconButton(icon: Icon(Icons.apps,), color:Color(0xFFBBBBBB), onPressed: () {},),
              IconButton(icon: Icon(Icons.description), color:Color(0xFFBBBBBB), onPressed: () {},), 
              IconButton(icon: Icon(Icons.person), color:Color(0xFFBBBBBB), onPressed: () {},),
              IconButton(icon: Icon(Icons.menu), color:Color(0xFFBBBBBB), onPressed: () {},),
              ],
            ),
          ),
      ),     
    
    );
  }
}