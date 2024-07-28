import 'package:flutter/material.dart';

class ListCategory extends StatelessWidget {
  const ListCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Kategori',
            style: Theme.of(context).primaryTextTheme.displayMedium,
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.edit_outlined)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.delete_outlined))
            ],
          )
        ],
      ),
      const Divider(
        color: Colors.black54,
        thickness: 1,
        height: 20,
      ),
    ]);
  }
}
