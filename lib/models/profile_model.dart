import 'package:project_spp/conf.dart';

class ProfileModel {
  String image = "";
  String name = "";
  String email = "";
  String telp = "";

  ProfileModel({
    required this.image,
    required this.name,
    required this.email,
    required this.telp,
  });
}

List<ProfileModel> profileData = <ProfileModel>[
  ProfileModel(
    image: PP,
    name: "Siti Nur Cholifah",
    email: "siti.nur.cholifah@spp.com",
    telp: "08534243223",
  ),
  ProfileModel(
      image: PP1,
      name: "Sabrin Tsabitah",
      email: "sabrin.tsabitah@spp.com",
      telp: "0823535334")
];
