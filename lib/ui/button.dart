import 'dart:html';

import 'package:flutter/material.dart';
import 'package:indriver_clone/ui/constants.dart';

class BotButton extends StatefulWidget {
  const BotButton({Key? key, required this.onTap, required this.title})
      : super(key: key);

  final Function() onTap;
  final String title;

  @override
  State<BotButton> createState() => _BotButtonState();
}

class _BotButtonState extends State<BotButton> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: size.width * 0.9,
        child: Text(widget.title, style: const TextStyle(color: Colors.white)),
        decoration: BoxDecoration(
            color: buttonColor, borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
