import 'package:flutter/material.dart';
import 'package:myfinance/global_variable.dart';

class CardInfo extends StatelessWidget {
  const CardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: GlobalVariable.deviceWidth(context) * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(width: 1, color: Colors.grey),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            width: (GlobalVariable.deviceWidth(context) * 0.79) / 2,
            decoration: const BoxDecoration(
              border: Border(right: BorderSide(width: 1, color: Colors.grey)),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  right: -10,
                  top: -10,
                  width: 50,
                  height: 60,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [
                          Color(0xFFC8E6C9),
                          Colors.white,
                        ],
                      ),
                    ),
                    child: const Icon(
                      Icons.arrow_upward,
                      size: 34,
                      color: Colors.green,
                    ),
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pemasukan',
                      style: TextStyle(color: Colors.black54),
                    ),
                    Text('Rp 1.000.000',
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold))
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: (GlobalVariable.deviceWidth(context) * 0.79) / 2,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              border: Border(left: BorderSide(width: 1, color: Colors.grey)),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  right: -12,
                  top: -10,
                  width: 50,
                  height: 60,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(9),
                        bottomRight: Radius.circular(9),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [
                          Color(0xFFFFCDD2),
                          Colors.white,
                        ],
                      ),
                    ),
                    child: const Icon(
                      Icons.arrow_downward,
                      size: 34,
                      color: Colors.red,
                    ),
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pengeluaran',
                      style: TextStyle(color: Colors.black54),
                    ),
                    Text('Rp 500.000',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold))
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
