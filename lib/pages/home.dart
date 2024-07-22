import 'package:flutter/material.dart';
import 'package:myfinance/widget/app_bar.dart';
import 'package:myfinance/widget/card_info.dart';
import 'package:myfinance/widget/list_data.dart';
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
    final DateTime firstYear = DateTime(_today.year, 1, 1);
    final DateTime lastYear = DateTime(_today.year, 12, 31);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [
              Theme.of(context).primaryColor,
              Theme.of(context).secondaryHeaderColor,
            ],
          ),
        ),
        child: Column(
          children: [
            const Navbar(),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(30.0)),
                  color: Colors.white,
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topCenter,
                  children: [
                    const CardInfo(),
                    Positioned(
                        top: 50,
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TableCalendar(
                                firstDay: firstYear,
                                lastDay: lastYear,
                                focusedDay: _today,
                                headerStyle: const HeaderStyle(
                                    formatButtonVisible: false,
                                    titleCentered: true),
                                selectedDayPredicate: (day) {
                                  return isSameDay(_selectedDay, day);
                                },
                                // event ketika ganti tanggal (onDaySelected)
                                onDaySelected: (selectedDay, focusedDay) {
                                  if (!isSameDay(_selectedDay, selectedDay)) {
                                    setState(() {
                                      _selectedDay = selectedDay;
                                      _today = focusedDay;
                                    });
                                  }
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  'Keterangan',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .displayLarge,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: ListView(
                                  shrinkWrap: true,
                                  children: const [
                                    ListData(),
                                    ListData(),
                                    ListData(),
                                    ListData(),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
