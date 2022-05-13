part of widgets;

class HomeListTransactionPage extends StatelessWidget {
  const HomeListTransactionPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    List<Widget> list = [
      const ListTransactionPage(count: 1),
      const ListTransactionPage(count: 3),
      const ListTransactionPage(count: 5),
    ];

    return Expanded(
      child: Container(
        color: const Color.fromARGB(90, 237, 231, 246),
        child: PageView(
          controller: controller,
          children: list,
        ),
      ),
    );
  }
}

class ListTransactionPage extends StatelessWidget {
  const ListTransactionPage({
    Key? key,
    required this.count,
  }) : super(key: key);

  final num count;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
      itemCount: count.toInt(),
      itemBuilder: (context, index) {
        return const ListTransactionPageItem();
      },
    );
  }
}

class ListTransactionPageItem extends StatelessWidget {
  const ListTransactionPageItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var listData = [
      {
        "title": "Title 1",
        "description": "Description 1",
        "amount": "1000000",
      },
      {
        "title": "Title 2",
        "description": "Description 2",
        "amount": "2000000",
      },
      {
        "title": "Title 3",
        "description": "Description 3",
        "amount": "3000000",
      },
      {
        "title": "Title 4",
        "description": "Description 4",
        "amount": "-4000000",
      },
    ];
    //  var rawData = {"name": "Tom", 'Email': 'tom@xyz.com'};
    //  rawData.forEach((k,v) => print('${k}: ${v}'));
    List<Widget> listings = listData
        .map((data) => ListTransactionItem(
            title: data["title"] ?? "",
            description: data["description"] ?? "",
            amount: data["amount"] ?? "0"))
        .toList();
    // List<Widget> listings =
    //     List<Widget>.filled(numberOfWidgets, const ListTransactionItem());

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ListTransactionItemDate(),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              children: listings,
            ),
          )
        ],
      ),
    );
  }
}

class ListTransactionItemDate extends StatelessWidget {
  const ListTransactionItemDate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: const [
          Text(
            "Tue",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 10,
            ),
          ),
          Text(
            "5",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class ListTransactionItem extends StatelessWidget {
  const ListTransactionItem({
    Key? key,
    required this.title,
    required this.description,
    required this.amount,
  }) : super(key: key);

  final String title;
  final String description;
  final String amount;

  @override
  Widget build(BuildContext context) {
    var amountColor =
        amount.startsWith("-") ? Colors.red[400] : Colors.green[400];

    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.only(right: 4),
            decoration: BoxDecoration(
              color: amountColor,
              shape: BoxShape.circle,
            ),
            child: SizedBox.fromSize(
              size: const Size.fromRadius(10),
              child: const FittedBox(
                child: Icon(
                  Icons.food_bank_rounded,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Text(
            currency(int.parse(amount)),
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
