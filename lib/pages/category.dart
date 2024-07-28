import 'package:flutter/material.dart';
import 'package:myfinance/widget/button_select.dart';
import 'package:myfinance/widget/list_category.dart';
import 'package:myfinance/widget/templete.dart';

class Categorys extends StatelessWidget {
  const Categorys({super.key});

  @override
  Widget build(BuildContext context) {
    return const Templete(
        content: Column(
      children: [
        ButtonSelect(options: ['Pemasukan', 'Pengeluaran']),
        SizedBox(height: 20),
        ListCategory(),
        ListCategory(),
        ListCategory(),
      ],
    ));
  }
}
