import 'package:flutter/material.dart';
import 'package:myfinance/global_variable.dart';

class ButtonSelect extends StatefulWidget {
  const ButtonSelect({super.key, required this.options});

  final List<String> options;

  @override
  State<ButtonSelect> createState() => _ButtonSelectState();
}

class _ButtonSelectState extends State<ButtonSelect> {
  late String selectedOption;

  @override
  void initState() {
    super.initState();
    selectedOption = widget.options.isNotEmpty ? widget.options.first : '';
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widget.options.map((option) {
        return Padding(
          padding: EdgeInsets.symmetric(
              horizontal: GlobalVariable.deviceWidth(context) * 0.02),
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedOption = option;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color:
                    selectedOption == option ? Colors.blue : Colors.transparent,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: selectedOption == option
                      ? Colors.transparent
                      : Colors.blue,
                  width: 1.0,
                ),
              ),
              child: Center(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      selectedOption = option;
                    });
                  },
                  style: TextButton.styleFrom(
                    foregroundColor:
                        selectedOption == option ? Colors.white : Colors.blue,
                    backgroundColor: selectedOption == option
                        ? Colors.blue
                        : Colors.transparent,
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Text(option),
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
