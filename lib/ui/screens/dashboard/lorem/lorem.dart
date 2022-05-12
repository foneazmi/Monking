part of screens;

class LoremScreen extends StatelessWidget {
  const LoremScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: Center(
          child: Text('Lorem'),
        ),
      ),
    );
  }
}
