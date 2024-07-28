import 'package:flutter/material.dart';
import 'package:myfinance/widget/app_bar.dart';

class Templete extends StatelessWidget {
  final Widget content;
  final bool withScrollView;
  const Templete(
      {super.key, required this.content, this.withScrollView = true});

  @override
  Widget build(BuildContext context) {
    return Container(
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
              borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
              color: Colors.white,
            ),
            child: withScrollView
                ? SingleChildScrollView(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: content,
                  )
                : content,
          ))
        ],
      ),
    );
  }
}
