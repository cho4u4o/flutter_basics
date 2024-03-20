import 'package:flutter/material.dart';

class TimeButton extends StatelessWidget {
  final int time;
  final void Function(int)? onPressed;

  const TimeButton({
    super.key,
    required this.time,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 30),
        Container(
          height: 70,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                width: 3,
                color: Theme.of(context).cardColor,
              )),
          child: TextButton(
            onPressed: () {
              onPressed?.call(time);
            },
            child: Text(
              "$time",
              style: TextStyle(
                color: Theme.of(context).cardColor,
                fontFamily: "IBM",
                fontSize: 30,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
