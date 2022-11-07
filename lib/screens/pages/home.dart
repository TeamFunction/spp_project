import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_spp/conf.dart';
import 'package:project_spp/screens/navbar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.topRight,
            child: SvgPicture.asset(
              bgRTE,
              width: MediaQuery.of(context).size.width * 0.65,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.topLeft,
            child: SvgPicture.asset(bgLTE,
                width: MediaQuery.of(context).size.width * 0.5),
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "SELAMAT DATANG DI APLIKASI PEMBAYARAN SPP",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        shadows: [
                          Shadow(
                            color: Colors.black.withOpacity(0.5),
                            offset: Offset(2, 2),
                            blurRadius: 15,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    // height: MediaQuery.of(context).size.height * 0.2,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10),
                      // backgroundBlendMode: BlendMode.src,
                      boxShadow: [
                        BoxShadow(
                          blurStyle: BlurStyle.outer,
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 5,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 15),
                          child: ContainerButton(
                            borderRadius: BorderRadius.circular(10),
                            overlayColor: Colors.transparent,
                            onPressed: () {},
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Tagihan",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Center(
                                child: Text(
                                  "Rp. 750.000",
                                  style: TextStyle(
                                    fontSize: 45,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          clipBehavior: Clip.none,
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              ContainerButton(
                                onPressed: () => Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, a, d) =>
                                        Pages(index: 2),
                                  ),
                                ),
                                width: 105,
                                children: const [
                                  Icon(Icons.payment, color: Colors.green),
                                  Text("Belum Bayar"),
                                ],
                              ),
                              SizedBox(width: 10),
                              ContainerButton(
                                onPressed: () => Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, a, d) =>
                                        Pages(index: 1),
                                  ),
                                ),
                                width: 100,
                                children: const [
                                  Icon(Icons.history_toggle_off),
                                  Text("Pending"),
                                ],
                              ),
                              SizedBox(width: 10),
                              ContainerButton(
                                onPressed: () => Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, a, d) =>
                                        Pages(index: 1),
                                  ),
                                ),
                                width: 100,
                                children: const [
                                  Icon(Icons.check_circle, color: Colors.green),
                                  Text("Berhasil"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    physics: const PageScrollPhysics(),
                    controller: PageController(
                      viewportFraction: 0.5,
                      keepPage: false,
                    ),
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      ImageCard(image: PP),
                      SizedBox(
                        width: 10,
                      ),
                      ImageCard(image: PP1),
                      SizedBox(
                        width: 10,
                      ),
                      ImageCard(image: PP),
                      SizedBox(
                        width: 10,
                      ),
                      ImageCard(image: PP1),
                      SizedBox(
                        width: 10,
                      ),
                      ImageCard(image: PP),
                      SizedBox(
                        width: 10,
                      ),
                      ImageCard(image: PP1),
                      SizedBox(
                        width: 10,
                      ),
                    ]),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class InvertedClipper extends CustomClipper<Path> {
  InvertedClipper();

  @override
  Path getClip(Size size) {
    return Path.combine(
      PathOperation.difference,
      Path()..addRect(Rect.fromLTWH(1, 1, size.width + 10, size.height + 10)),
      Path()..addRect(Rect.fromLTWH(0, 0, size.width, size.height)),
    );
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class ContainerButton extends StatelessWidget {
  const ContainerButton(
      {required this.children,
      this.borderRadius,
      this.onPressed,
      this.width,
      this.crossAxisAlignment,
      this.overlayColor,
      Key? key})
      : super(key: key);

  final double? width;
  final Function? onPressed;
  final List<Widget> children;
  final BorderRadius? borderRadius;
  final CrossAxisAlignment? crossAxisAlignment;
  final Color? overlayColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Colors.grey.withOpacity(0.5),
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: () => onPressed!() ?? () {},
        style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.all(5)),
            backgroundColor: MaterialStateProperty.all(Colors.white),
            foregroundColor: MaterialStateProperty.all(Colors.black),
            overlayColor: MaterialStateProperty.all(
                overlayColor ?? Colors.blue.withOpacity(0.3))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
            children: children,
          ),
        ),
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  const ImageCard({this.image = "", Key? key}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width * 0.5,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image.asset(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}
