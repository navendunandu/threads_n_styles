import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.amber[50],
      automaticallyImplyLeading: false,
      leading: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
        child: Image.asset(
          'assets/ThreadsnStyles.png',
          width: 60,
          fit: BoxFit.contain,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.account_circle_outlined,
            color: Colors.black,
          ),
          onPressed: () {
            // Implement the action for "My Account" button here
          },
        ),
        IconButton(
          icon: const Icon(
            Icons.favorite_outline,
            color: Colors.black,
          ),
          onPressed: () {
            // Implement the action for "Favorites" button here
          },
        ),
        IconButton(
          icon: const Icon(
            Icons.shopping_bag_outlined,
            color: Colors.black,
          ),
          onPressed: () {
            // Implement the action for "Bag" button here
          },
        ),
      ],
    );
  }
}
