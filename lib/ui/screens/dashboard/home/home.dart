// ignore_for_file: prefer_const_constructors

part of screens;

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Column(
        children: [
          HomeHeader(amount: currency(1000000)),
          HomeListTransactionPage(),
        ],
      ),
    );
  }
}
