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
        bottomNavigationBar: BottomAppBar(
          color: Colors.deepPurple,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home_max_rounded),
                color: _selectedIndex == 0
                    ? Colors.white
                    : Colors.deepPurpleAccent[100],
                onPressed: () => _onItemTapped(0),
              ),
              IconButton(
                icon: Icon(Icons.wallet_rounded),
                color: _selectedIndex == 1
                    ? Colors.white
                    : Colors.deepPurpleAccent[100],
                onPressed: () => _onItemTapped(1),
              ),
              SizedBox(width: 50),
              IconButton(
                icon: Icon(Icons.folder_copy_rounded),
                color: _selectedIndex == 2
                    ? Colors.white
                    : Colors.deepPurpleAccent[100],
                onPressed: () => _onItemTapped(2),
              ),
              IconButton(
                icon: Icon(Icons.settings_rounded),
                color: _selectedIndex == 3
                    ? Colors.white
                    : Colors.deepPurpleAccent[100],
                onPressed: () => _onItemTapped(3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
