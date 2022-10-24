import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({
    required this.pressed,
    required this.childs,
    this.borderRadius = const BorderRadius.all(
      Radius.circular(15),
    ),
    this.blurRadius = 5,
    this.spreadRadius = 0.5,
    this.offset = const Offset(2, 3),
    this.bgColor = Colors.white,
    this.fgColor = Colors.black,
    this.shadowColor = const Color.fromARGB(20, 0, 0, 0),
    this.pressedColor = const Color.fromARGB(10, 0, 0, 0),
    this.height = 45,
    this.padding = const EdgeInsets.all(10.0),
    this.fontSize = 14.0,
    Key? key,
  }) : super(key: key);

  final Function pressed;
  final Color pressedColor;
  final Color bgColor;
  final Color fgColor;
  final Color shadowColor;
  final Offset offset;
  final double spreadRadius;
  final double blurRadius;
  final Widget childs;
  final double height;
  final EdgeInsets padding;
  final double fontSize;
  final BorderRadius borderRadius;

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: widget.shadowColor,
            offset: widget.offset,
            spreadRadius: widget.spreadRadius,
            blurRadius: widget.blurRadius,
          )
        ],
        borderRadius: widget.borderRadius,
      ),
      clipBehavior: Clip.antiAlias,
      child: ElevatedButton(
          onPressed: () {
            widget.pressed();
          },
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return widget.pressedColor;
              }
              return null;
            }),
            backgroundColor: MaterialStateProperty.all(widget.bgColor),
            foregroundColor: MaterialStateProperty.all(widget.fgColor),
          ),
          child: widget.childs),
    );
  }
}
