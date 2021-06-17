import 'package:flutter/material.dart';

class MainAppbar extends StatelessWidget {
  final firstIcon;
  final String topic;
  final lastIcon;
  const MainAppbar({
    Key key,
    this.firstIcon,
    this.topic,
    this.lastIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.teal[50],
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
              padding: const EdgeInsets.all(8.0), child: this.firstIcon),
        ),
        Text(
          this.topic == null ? "" : this.topic,
          style: TextStyle(
            fontFamily: "Lato",
            color: Colors.blueGrey,
            fontWeight: FontWeight.w700,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.teal[50],
            borderRadius: BorderRadius.circular(10.0),
          ),
          child:
              Padding(padding: const EdgeInsets.all(8.0), child: this.lastIcon),
        ),
      ],
    );
  }
}
