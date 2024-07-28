import 'package:flutter/material.dart';
import 'package:myfinance/widget/card_info.dart';
import 'package:myfinance/widget/list_data.dart';
import 'package:myfinance/widget/templete.dart';
import 'package:table_calendar/table_calendar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DateTime _today = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    final DateTime firstYear = DateTime(_today.year - 1, 1, 1);
    final DateTime lastYear = DateTime(_today.year + 1, 12, 31);

    return Scaffold(
      body: Templete(
        withScrollView: false,
        content: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: [
            Positioned.fill(
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(top: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TableCalendar(
                      firstDay: firstYear,
                      lastDay: lastYear,
                      focusedDay: _today,
                      headerStyle: const HeaderStyle(
                        formatButtonVisible: false,
                        titleCentered: true,
                      ),
                      selectedDayPredicate: (day) {
                        return isSameDay(_selectedDay, day);
                      },
                      onDaySelected: (selectedDay, focusedDay) {
                        if (!isSameDay(_selectedDay, selectedDay)) {
                          setState(() {
                            _selectedDay = selectedDay;
                            _today = focusedDay;
                          });
                        }
                      },
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Riwayat',
                        style: Theme.of(context)
                            .primaryTextTheme
                            .displayLarge!
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          ListData(),
                          ListData(),
                          ListData(),
                          ListData(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Positioned(
              top: -20,
              child: CardInfo(),
            ),
          ],
        ),
      ),
    );
  }
}
