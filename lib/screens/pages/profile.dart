import 'package:flutter/material.dart';
import 'package:project_spp/components/button.dart';
import 'package:project_spp/components/topbar.dart';
import 'package:project_spp/models/profile_model.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopBar(
          title: "PROFIL",
        ),
        const SizedBox(
          height: 50,
        ),
        Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(100)),
              child: SizedBox(
                width: 130,
                height: 130,
                child: Image.asset(
                  profileData[0].image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              profileData[0].name,
              style: const TextStyle(fontSize: 20),
            )
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              ButtonWidget(
                pressed: () {},
                childs: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.manage_accounts),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Pengaturan Akun"),
                      ],
                    ),
                    const Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ButtonWidget(
                pressed: () {},
                childs: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.help_outline),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Bantuan"),
                      ],
                    ),
                    const Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              ButtonWidget(
                  pressed: () {},
                  childs: const Center(
                    child: Text(
                      "LOGOUT",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.normal),
                    ),
                  ))
            ],
          ),
        )
      ],
    );
  }
}



//  Container(
//     width: MediaQuery.of(context).size.width * 0.8,
//     height: 40,
//     decoration: BoxDecoration(
//       color: Colors.white,
//       boxShadow: [
//         BoxShadow(
//           color: Colors.black.withOpacity(0.2),
//           offset: Offset(2, 3),
//           spreadRadius: 0.5,
//           blurRadius: 5,
//         )
//       ],
//       borderRadius: BorderRadius.all(
//         Radius.circular(10),
//       ),
//     ),
//     padding: EdgeInsets.symmetric(horizontal: 10),
//     child: 
//  )