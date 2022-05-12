// ignore_for_file: prefer_const_constructors

part of screens;

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);
  @override
  DashboardScreenState createState() => DashboardScreenState();
}

class DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static final List<Widget> _pages = <Widget>[
    HomeScreen(),
    LoremScreen(),
    LoremScreen(),
    LoremScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: _pages.elementAt(_selectedIndex),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {
            // Navigator.of(context).push(MaterialPageRoute(
            //     builder:(BuildContext context){
            //       return DynamicPage('Detail');
            //     }
            // ));
          },
          tooltip: '',
          child: Icon(
            Icons.add,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_max_rounded),
              label: 'Home',
              // backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wallet_rounded),
              label: 'Lorem',
              // backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.folder_copy_rounded),
              label: 'Lorem',
              // backgroundColor: Colors.yellow,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Lorem',
              // backgroundColor: Colors.blue,
            ),
          ],
          showSelectedLabels: false,
          backgroundColor: Colors.deepPurple,

          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.deepPurpleAccent,
          type: BottomNavigationBarType.fixed, // Fixed
        ),
      ),
    );
  }
}
