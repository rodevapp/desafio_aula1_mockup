import 'package:flutter/material.dart';

class TinderButtom extends StatelessWidget {
  final void Function() onPressed;
  final String iconName;
  final String label;
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;

  const TinderButtom({
    super.key,
    required this.onPressed,
    required this.iconName,
    required this.label,
    this.top,
    this.bottom,
    this.left,
    this.right,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: top != null ? top! : 1,
        bottom: bottom != null ? bottom! : 1,
        left: left != null ? left! : 1,
        right: right != null ? right! : 1,
      ),
      child: OutlinedButton.icon(
        onPressed: onPressed,
        icon: Image.asset(
          iconName,
          height: 20,
          width: 20,
        ),
        label: Align(
          alignment: Alignment.center,
          child: Text(
            label.toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        style: OutlinedButton.styleFrom(
          primary: Colors.white10,
          alignment: Alignment.centerLeft,
          fixedSize: const Size(double.maxFinite, 50),
          onSurface: Colors.transparent,
          side: const BorderSide(
            width: 2.0,
            color: Colors.white,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
