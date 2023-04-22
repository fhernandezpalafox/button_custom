import 'package:flutter/material.dart';

class BottonCustom extends StatelessWidget {
  String? textButton;
  void Function()? funcOnTap;

  BottonCustom({super.key, required this.textButton, required this.funcOnTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 20),
      child: InkWell(
        borderRadius: BorderRadius.circular(30.0),
        onTap: funcOnTap,
        child: Container(
            height: 50.0,
            width: 180.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              gradient: const LinearGradient(
                  colors: [Color(0xff4268d3), Color(0xff584cd1)],
                  begin: FractionalOffset(0.2, 0.0),
                  end: FractionalOffset(1.0, 0.6),
                  stops: [0.0, 0.6],
                  tileMode: TileMode.clamp),
            ),
            child: Center(
                child: Text(
              textButton!,
              style: const TextStyle(fontSize: 18.0, color: Colors.white),
            ))),
      ),
    );
  }
}
