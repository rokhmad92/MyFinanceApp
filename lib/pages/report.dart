import 'package:flutter/material.dart';
import 'package:myfinance/widget/button_select.dart';
import 'package:myfinance/widget/list_data.dart';
import 'package:myfinance/widget/pie_chart.dart';
import 'package:myfinance/widget/templete.dart';

class Report extends StatelessWidget {
  const Report({super.key});

  @override
  Widget build(BuildContext context) {
    return Templete(
        content: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MyPieChart(),
        const SizedBox(height: 20),
        const ButtonSelect(options: ['Bulan ini', 'Bulan Lalu', '3 Bulan']),
        const SizedBox(height: 20),
        Text(
          'Riwayat',
          style: Theme.of(context)
              .primaryTextTheme
              .displayLarge!
              .copyWith(fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 5.0),
        const ListData(),
        const ListData(),
        const ListData(),
      ],
    ));
  }
}
