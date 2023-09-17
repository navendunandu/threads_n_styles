import 'package:flutter/material.dart';

class SearchHere extends StatelessWidget {
  const SearchHere({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'search',
          border: const OutlineInputBorder(),
          prefixIcon: IconButton(
            iconSize: 20,
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            icon: const Icon(Icons.search_outlined),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
