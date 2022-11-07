import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_spp/components/button.dart';
import 'package:project_spp/components/topbar.dart';
import 'package:project_spp/conf.dart';
import 'package:project_spp/models/pembayaran_model.dart';
import 'package:project_spp/models/riwayat_model.dart';

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

class CheckButton extends StatelessWidget {
  const CheckButton(
      {required this.value,
      required this.onChanged,
      required this.data,
      Key? key})
      : super(key: key);
  final bool value;
  final ValueChanged<bool> onChanged;
  final PembayaranList data;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.3),
              offset: Offset(0, 5),
              blurRadius: 5),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.bulan,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Rp.${data.harga}",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Checkbox(
            value: value,
            onChanged: (bool? newValue) {
              onChanged(newValue!);
            },
          ),
        ],
      ),
    );
  }
}

class GradientButton extends StatelessWidget {
  const GradientButton(
      {required this.onPressed, this.borderRadius, this.total = 0, Key? key})
      : super(key: key);

  final Function onPressed;
  final double total;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: borderRadius ?? BorderRadius.circular(20),
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.blue,
                      Color.fromARGB(255, 0, 222, 255),
                    ],
                  ),
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                  textStyle: const TextStyle(color: Colors.white),
                  alignment: Alignment.center),
              onPressed: () => onPressed(),
              child: Center(
                child: Column(
                  children: [
                    const Text(
                      "Bayar",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      "Rp.${total}",
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
