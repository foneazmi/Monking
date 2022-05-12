// ignore_for_file: prefer_const_constructors
part of widgets;

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
    required this.amount,
  }) : super(key: key);

  final String amount;
  // final Function onPress;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).viewPadding.top + 8,
        left: 16,
        right: 16,
        bottom: 8,
      ),
      width: MediaQuery.of(context).size.width,
      color: Colors.deepPurple,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Estimate Assets",
                    style: TextStyle(
                      color: Colors.deepPurple[100],
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    amount,
                    style: TextStyle(
                      color: Color(0xFFEDE7F6),
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              IconButton(
                icon: Icon(Icons.notifications_rounded),
                color: Colors.white,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
