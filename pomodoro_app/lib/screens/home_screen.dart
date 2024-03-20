import 'package:flutter/material.dart';
import 'package:pomodoro_app/time_button.dart';
import 'dart:async';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isRunning = false;
  int totalSeconds = 1500;
  int totalPomodoros = 0;
  int totalGoals = 0;
  late Timer timer; // initiate later

  void onClick(Timer timer) {
    if (totalSeconds == 0) {
      setState(() {
        if (totalPomodoros <= 4) {
          totalPomodoros = totalPomodoros + 1;
        } else {
          totalGoals = totalGoals + 1;
          totalPomodoros = 0;
        }
        isRunning = false;
        totalSeconds = 1500;
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
      totalSeconds = 1500;
    });
  }

  void onButton(int time) {
    setState(() {
      isRunning = false;
      timer.cancel();
      totalSeconds = time * 60;
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
                  fontFamily: "IBM",
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
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TimeButton(
                          time: 25,
                          onPressed: onButton,
                        ),
                        TimeButton(
                          time: 30,
                          onPressed: onButton,
                        ),
                        TimeButton(
                          time: 35,
                          onPressed: onButton,
                        ),
                        TimeButton(
                          time: 40,
                          onPressed: onButton,
                        ),
                        TimeButton(
                          time: 45,
                          onPressed: onButton,
                        ),
                        TimeButton(
                          time: 50,
                          onPressed: onButton,
                        ),
                        TimeButton(
                          time: 55,
                          onPressed: onButton,
                        ),
                        const SizedBox(width: 30),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                IconButton(
                  onPressed: isRunning ? onPausePressed : onStartPressed,
                  icon: Icon(isRunning
                      ? Icons.pause_circle_filled
                      : Icons.play_circle_filled),
                  iconSize: 120,
                  color: Theme.of(context).cardColor,
                ),
                IconButton(
                  onPressed: onResetPressed,
                  icon: const Icon(Icons.restart_alt_outlined),
                  iconSize: 30,
                  color: Theme.of(context).cardColor,
                ),
                const SizedBox(height: 40),
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
                            Row(
                              children: [
                                Text(
                                  "$totalPomodoros",
                                  style: TextStyle(
                                    fontSize: 60,
                                    fontFamily: "IBM",
                                    color: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .color,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "/4",
                                  style: TextStyle(
                                    fontSize: 60,
                                    fontFamily: "IBM",
                                    color: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .color,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
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
                            Row(
                              children: [
                                Text(
                                  "$totalGoals",
                                  style: TextStyle(
                                    fontSize: 60,
                                    fontFamily: "IBM",
                                    color: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .color!,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "/12",
                                  style: TextStyle(
                                    fontSize: 60,
                                    fontFamily: "IBM",
                                    color: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .color,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
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
