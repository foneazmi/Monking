part of screens;

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  final transactionList = Hive.box('transaction_list');

  var type = "test";

  void setData() async {
    await transactionList.add({"description": "food", "amount": "10000"});
    // print('Name: ${box.get('name')}');
  }

  void deleteData() async {
    // await transactionList.deleteAt(0);
    // await Hive.deleteBoxFromDisk('transaction_list');

    // print('Name: ${box.get('name')}');
  }

  // Get all items from the database
  void getData() {
    final data = transactionList.keys.map((key) {
      final value = transactionList.get(key);
      return {
        "key": key,
        "description": value["description"],
        "amount": value['amount']
      };
    }).toList();
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Add New Transaction $type"),
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
                          child: Text('Close'),
                          onPressed: () {
                            setState(() {
                              type = "food";
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                child: Text('Float Modal'))
          ],
        ),
      ),
    );
  }
}
