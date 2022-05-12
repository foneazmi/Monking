part of widgets;

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
    required this.name,
    required this.image,
    required this.onPressCart,
    required this.onPressWishlist,
  }) : super(key: key);

  final String name;
  final String image;
  final Function onPressCart;
  final Function onPressWishlist;

  @override
  Widget build(BuildContext context) {
    var statusBarHeight = MediaQuery.of(context).viewPadding.top;

    return Container(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 8 + statusBarHeight,
        bottom: 8,
      ),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.red.withOpacity(0.2),
            spreadRadius: 10,
            blurRadius: 20,
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(44),
            child: Image.network(
              image,
              height: 44,
              fit: BoxFit.cover,
              width: 44,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hello',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
