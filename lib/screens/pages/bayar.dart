import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_spp/components/checkbox_list.dart';
import 'package:project_spp/components/gradient_button.dart';
import 'package:project_spp/components/topbar.dart';
import 'package:project_spp/conf.dart';
import 'package:project_spp/models/pembayaran_model.dart';

class Bayar extends StatefulWidget {
  const Bayar({Key? key}) : super(key: key);

  @override
  State<Bayar> createState() => _BayarState();
}

class _BayarState extends State<Bayar> {
  bool _isSelected = false;

  // List<String> data = ["Mathew", "Deon", "Sara", "Yeu"];
  List<String> userChecked = [];
  double total = 0;

  void _onSelected(bool selected, PembayaranList dataName) {
    if (selected == true) {
      setState(() {
        userChecked.add(dataName.bulan);
        total += dataName.harga;
      });
    } else {
      setState(() {
        userChecked.remove(dataName.bulan);
        total -= dataName.harga;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TopBar(
          leftIcon: Transform.scale(
            scale: 0.9,
            child: SvgPicture.asset(
              icTransaksi,
              color: Colors.white,
              fit: BoxFit.contain,
            ),
          ),
          title: "PEMBAYARAN",
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: pembayaran.length,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  CheckButton(
                    data: pembayaran[index],
                    value: userChecked.contains(pembayaran[index].bulan),
                    onChanged: (bool newValue) {
                      setState(() {
                        _onSelected(newValue, pembayaran[index]);
                      });
                    },
                  ),
                  Divider(),
                ],
              );
            },
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
          child: GradientButton(
            borderRadius: BorderRadius.circular(20),
            onPressed: () {
              print("bayar ${total}");
            },
            total: total,
          ),
        ),
      ],
    );
  }
}
