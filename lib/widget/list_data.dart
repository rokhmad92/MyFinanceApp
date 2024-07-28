import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ListData extends StatelessWidget {
  const ListData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Slidable(
        key: const ValueKey(0),
        startActionPane: ActionPane(
          motion: const ScrollMotion(),
          // ketika delete or slidable paling ujung
          dismissible: DismissiblePane(onDismissed: () {}),
          children: [
            SlidableAction(
              onPressed: (context) {},
              backgroundColor: const Color(0xFFFE4A49),
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Delete',
            ),
            SlidableAction(
              onPressed: (context) {},
              backgroundColor: const Color(0xFF21B7CA),
              foregroundColor: Colors.white,
              icon: Icons.edit,
              label: 'Edit',
            ),
          ],
        ),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Kategori',
                style: Theme.of(context).primaryTextTheme.displayMedium,
              ),
              Text(
                'Rp. 160.500',
                style: Theme.of(context)
                    .primaryTextTheme
                    .displayMedium
                    ?.copyWith(color: Colors.green),
              )
            ],
          ),
          const SizedBox(height: 5),
          Text(
              'when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',
              style: Theme.of(context).primaryTextTheme.displaySmall),
        ]),
      ),
      const Divider(
        color: Colors.black54,
        thickness: 1,
        height: 20,
      ),
    ]);
  }
}
