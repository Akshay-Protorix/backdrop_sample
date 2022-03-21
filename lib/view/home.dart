import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';
import 'home1.dart';
import 'home2.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentIndex = 0;
  final List<Widget> _pages = [const Home1(), const Home2()];

  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      headerHeight: 200,
      appBar: BackdropAppBar(
        automaticallyImplyLeading: false,
        title: const Text("Backdrop Sample"),
        leading: const BackdropToggleButton(
          icon: AnimatedIcons.home_menu,
        ),
      ),
      backLayer: BackdropNavigationBackLayer(
        items: const [
          ListTile(title: Text("Home 1")),
          ListTile(title: Text("Home 2")),
        ],
        onTap: (int position) => {setState(() => _currentIndex = position)},
      ),
      frontLayer: _pages[_currentIndex],
    );
  }
}
