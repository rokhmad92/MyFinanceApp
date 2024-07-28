import 'package:flutter/material.dart';
import 'package:myfinance/widget/button_select.dart';
import 'package:myfinance/widget/date_field.dart';
import 'package:myfinance/widget/elevated_button.dart';
import 'package:myfinance/widget/number_field.dart';
import 'package:myfinance/widget/select_field.dart';
import 'package:myfinance/widget/templete.dart';
import 'package:myfinance/widget/text_field.dart';

class Input extends StatelessWidget {
  const Input({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Templete(
          content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Form input data',
            style: Theme.of(context)
                .primaryTextTheme
                .displayLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          RichText(
            text: TextSpan(
              style: Theme.of(context).primaryTextTheme.displayMedium,
              children: const [
                TextSpan(
                  text: 'Isi form ini untuk menginput laporan keuangan. Tanda',
                ),
                TextSpan(
                  text: ' * ',
                  style: TextStyle(color: Colors.red),
                ),
                TextSpan(
                  text: 'wajib di isi',
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const ButtonSelect(options: ['Pemasukan', 'Pengeluaran']),
          const SizedBox(height: 15),
          const FormDate(labelText: 'Tanggal*', hintText: ''),
          const SizedBox(height: 15),
          const FormSelect(list: ['One', 'Two', 'Three']),
          const SizedBox(height: 15),
          const FormText(labelText: 'Keterangan', hintText: ''),
          const SizedBox(height: 15),
          const FormNumber(
            labelText: 'Nominal*',
            hintText: '',
            currency: true,
          ),
          const SizedBox(height: 30),
          ButtonElevated(onPress: () {}, text: "Simpan Data")
        ],
      )),
    );
  }
}
