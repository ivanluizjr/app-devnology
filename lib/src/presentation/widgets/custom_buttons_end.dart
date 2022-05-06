import 'package:flutter/material.dart';

class CustomButtomEnd extends StatelessWidget {
  const CustomButtomEnd({
    Key? key,
    required this.onTap,
    required this.text,
    required this.color,
    required this.icon,
  }) : super(key: key);

  final Function() onTap;
  final Text text;
  final Color color;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Container(
        height: 40,
        width: 150,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: InkWell(
          onTap: onTap,
          child: Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                      left: 85,
                    ),
                    child: Row(
                      children: const [],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 12,
                  left: 20,
                ),
                child: text,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 110),
                child: SizedBox(
                  child: icon,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
