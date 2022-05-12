part of screens;

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 700), () {
      // Get.off(const DashboardScreen());
    });

    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: Colors.red,
        body: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Text(
              'My Flutter Playground',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
