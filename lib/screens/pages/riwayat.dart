import 'package:flutter/material.dart';
import 'package:project_spp/components/button.dart';
import 'package:project_spp/components/topbar.dart';
import 'package:project_spp/models/profile_model.dart';
import 'package:project_spp/models/riwayat_model.dart';

class Riwayat extends StatelessWidget {
  const Riwayat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopBar(
          leftIcon: Icon(Icons.history, color: Colors.white, size: 35),
          title: "RIWAYAT",
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: tanggal.length,
            padding: EdgeInsets.all(10),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ButtonWidget(
                    pressed: () {},
                    height: 50,
                    childs: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                                index % 2 == 0
                                    ? Icons.check_circle
                                    : Icons.history_toggle_off,
                                color: index % 2 == 0
                                    ? Colors.green
                                    : Colors.black),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              tanggal[index],
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        const Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                  Divider()
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
