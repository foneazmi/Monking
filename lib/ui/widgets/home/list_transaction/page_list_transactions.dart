part of widgets;

class HomeListTransactionPage extends StatelessWidget {
  const HomeListTransactionPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    List<Widget> list = [
      ListTransactionPage(count: 2),
      ListTransactionPage(count: 4),
      ListTransactionPage(count: 5),
    ];

    return Expanded(
      child: Container(
        color: Colors.deepPurple[50],
        child: PageView(
          controller: controller,
          children: list,
        ),
      ),
    );
  }
}

class ListTransactionPage extends StatelessWidget {
  ListTransactionPage({
    Key? key,
    required this.count,
  }) : super(key: key);

  final num count;

  final List<Widget> list = [];

  @override
  Widget build(BuildContext context) {
    for (var i = 0; i <= count; i++) {
      list.add(const ListTransactionPageItem());
    }

    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: list,
        ),
      ),
    );
  }
}

class ListTransactionPageItem extends StatelessWidget {
  const ListTransactionPageItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Column(
            children: const [
              Text("Tue"),
              Text("5"),
            ],
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(4),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Title",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Description",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    currency(10000),
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
