import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'dart:math';

class MyPieChart extends StatefulWidget {
  const MyPieChart({super.key});

  @override
  State<MyPieChart> createState() => _MyPieChartState();
}

class _MyPieChartState extends State<MyPieChart> {
  final Random _random = Random();

  late final List<Map<String, dynamic>> _data;
  Color _generateRandomColor() {
    return Color.fromRGBO(
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
      1,
    );
  }

  @override
  void initState() {
    super.initState();
    _data = [
      {'title': 'Hallo', 'value': 10, 'color': _generateRandomColor()},
      {'title': 'Hai', 'value': 8, 'color': _generateRandomColor()},
      {'title': 'tes', 'value': 5, 'color': _generateRandomColor()},
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding: const EdgeInsets.all(10),
        height: 200,
        child: PieChart(
          PieChartData(
            sectionsSpace: 5,
            sections: _data.asMap().entries.map((entry) {
              final item = entry.value;
              return PieChartSectionData(
                value: item['value'].toDouble(),
                color: item['color'],
                title: '${item['value']}%',
                titleStyle: const TextStyle(color: Colors.white),
                showTitle: true,
              );
            }).toList(),
          ),
        ),
      ),
      const SizedBox(height: 5),
      Center(
        child: Wrap(
          spacing: 10.0,
          runSpacing: 8.0,
          children: _data.asMap().entries.map((entry) {
            final item = entry.value;
            return _buildLegend(color: item['color'], text: item['title']);
          }).toList(),
        ),
      ),
    ]);
  }

  Widget _buildLegend({required Color color, required String text}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 20,
          height: 20,
          color: color,
        ),
        const SizedBox(width: 8),
        Text(text),
      ],
    );
  }
}
