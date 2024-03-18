import 'package:flutter/material.dart';
import 'dart:async';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const twentyFiveMin = 1500;
  bool isRunning = false;
  int totalSeconds = twentyFiveMin;
  int totalPomodoros = 0;
  late Timer timer; // initiate later

  void onClick(Timer timer) {
    if (totalSeconds == 0) {
      setState(() {
        totalPomodoros = totalPomodoros + 1;
        isRunning = false;
        totalSeconds = twentyFiveMin;
      });
      timer.cancel();
    } else {
      setState(() {
        totalSeconds = totalSeconds - 1;
      });
    }
  }

  void onStartPressed() {
    timer = Timer.periodic(
        const Duration(seconds: 1), onClick); // periodically activate {}, 주기마다
    setState(() {
      isRunning = true;
    });
  } // 괄호는 넣을 필요가 없음 -> 괄호 넣으면 즉시실행의미

  void onPausePressed() {
    timer.cancel();
    setState(() {
      isRunning = false;
    });
  }

  void onResetPressed() {
    timer.cancel();
    setState(() {
      isRunning = false;
      totalSeconds = twentyFiveMin;
    });
  }

  String format(int seconds) {
    var duration = Duration(seconds: seconds);
    return duration.toString().split(".").first.substring(2, 7); //우와!!
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'POMOTIMER',
                  style: TextStyle(
                    fontFamily: "Reem",
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                    color: Theme.of(context).cardColor,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                format(totalSeconds),
                style: TextStyle(
                  color: Theme.of(context).cardColor,
                  fontSize: 89,
                  fontFamily: "Reem",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 60,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                              width: 2,
                              color: Theme.of(context).cardColor,
                            )),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "25",
                            style: TextStyle(
                              color: Theme.of(context).cardColor,
                              fontFamily: "Archivo",
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 30),
                      Container(
                        height: 60,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 2,
                              color: Theme.of(context).cardColor,
                            )),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "30",
                            style: TextStyle(
                              color: Theme.of(context).cardColor,
                              fontFamily: "Archivo",
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 30),
                      Container(
                        height: 60,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 2,
                              color: Theme.of(context).cardColor,
                            )),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "35",
                            style: TextStyle(
                              color: Theme.of(context).cardColor,
                              fontFamily: "Archivo",
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 30),
                      Container(
                        height: 60,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 2,
                              color: Theme.of(context).cardColor,
                            )),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "40",
                            style: TextStyle(
                              color: Theme.of(context).cardColor,
                              fontFamily: "Reem",
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 30),
                      Container(
                        height: 60,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 2,
                              color: Theme.of(context).cardColor,
                            )),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "45",
                            style: TextStyle(
                              color: Theme.of(context).cardColor,
                              fontFamily: "Reem",
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 30),
                      Container(
                        height: 60,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 2,
                              color: Theme.of(context).cardColor,
                            )),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "50",
                            style: TextStyle(
                              color: Theme.of(context).cardColor,
                              fontFamily: "Reem",
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                IconButton(
                  onPressed: isRunning ? onPausePressed : onStartPressed,
                  icon: Icon(isRunning
                      ? Icons.pause_circle_outline
                      : Icons.play_circle_outline),
                  iconSize: 120,
                  color: Theme.of(context).cardColor,
                ),
                IconButton(
                  onPressed: onResetPressed,
                  icon: const Icon(Icons.restart_alt_outlined),
                  iconSize: 30,
                  color: Theme.of(context).cardColor,
                ),
              ],
            ),
          ),
          Flexible(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "$totalPomodoros",
                              style: TextStyle(
                                fontSize: 60,
                                fontFamily: "Reem",
                                color: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .color,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "ROUND",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Reem",
                                color: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .color,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "$totalPomodoros",
                              style: TextStyle(
                                fontSize: 60,
                                fontFamily: "Reem",
                                color: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .color!,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "GOAL",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Reem",
                                color: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .color!,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
