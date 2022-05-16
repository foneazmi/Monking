part of screens;

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  void setData() async {}

  void deleteData() async {}

  void getData() {}

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Add New Transaction"),
        ),
        body: Column(
          children: [
            TextButton(
              onPressed: setData,
              child: const Text('Insert'),
            ),
            TextButton(
              onPressed: getData,
              child: const Text('Get Data'),
            ),
            TextButton(
              onPressed: deleteData,
              child: const Text('Delete Data'),
            ),
            TextButton(
              onPressed: () => showFloatingModalBottomSheet(
                context: context,
                builder: (context) => Container(
                  height: 200,
                  color: Colors.red,
                  child: TextButton(
                    child: const Text('Close'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              child: const Text('Float Modal'),
            )
          ],
        ),
      ),
    );
  }
}
