import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  final Color color;
  final String startHour, startMin, endHour, endMin;
  final String task1, task2;
  final String name1, name2, name3;
  final bool isMine;

  const ScheduleCard({
    super.key,
    required this.color,
    required this.startHour,
    required this.startMin,
    required this.endHour,
    required this.endMin,
    required this.name1,
    required this.name2,
    required this.name3,
    required this.task1,
    required this.task2,
    required this.isMine,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 8,
        ),
        Container(
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(35)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      startHour,
                      style: const TextStyle(
                          fontSize: 20,
                          height: 0.8,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(startMin),
                    Transform.translate(
                      offset: const Offset(0, -3),
                      child: Transform.scale(
                        scale: 1.5,
                        child: const Text(
                          "|",
                          style: TextStyle(fontWeight: FontWeight.w200),
                        ),
                      ),
                    ),
                    Text(
                      endHour,
                      style: const TextStyle(
                          fontSize: 20,
                          height: 0.8,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(endMin),
                  ],
                ),
                const SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("$task1\n$task2",
                        style: const TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w500,
                            height: 0.9)),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Text(
                          isMine
                              ? 'ME     '
                              : '', // Display 'ME' if isMine is true, otherwise display an empty string
                          style: isMine // Apply styles only if isMine is true
                              ? const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                )
                              : null, // Set null style if isMine is false
                        ),
                        Text(
                          '$name1     $name2     $name3',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black.withOpacity(0.5)),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
