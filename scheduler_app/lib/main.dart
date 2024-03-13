import 'package:flutter/material.dart';
import 'package:scheduler_app/schedule_card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF1F1F1F),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 40, // Set a specific width
                      height: 40, // Set a specific height
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 40,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "MONDAY 16",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                Row(
                  children: [
                    const Text(
                      "TODAY",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                    Text(
                      "•",
                      style: TextStyle(
                        color: Colors.pink.withOpacity(0.5),
                        fontSize: 50,
                      ),
                    ),
                    Text(
                      " 17 18 19",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 50,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ScheduleCard(
                      color: Color(0xffFEF754),
                      startHour: '11',
                      startMin: '30',
                      endHour: '12',
                      endMin: '20',
                      name1: 'ALEX',
                      name2: 'HELENA',
                      name3: 'NANA',
                      task1: 'DESIGN',
                      task2: 'MEETING',
                      isMine: false,
                    ),
                    ScheduleCard(
                      color: Color(0xff9C6BCE),
                      startHour: '12',
                      startMin: '35',
                      endHour: '14',
                      endMin: '10',
                      name1: 'RICHARD',
                      name2: 'CIRY',
                      name3: '+4',
                      task1: 'DAILY',
                      task2: 'PROJECT',
                      isMine: true,
                    ),
                    ScheduleCard(
                      color: Color(0xffBCEE4B),
                      startHour: '15',
                      startMin: '00',
                      endHour: '16',
                      endMin: '30',
                      name1: 'DEN',
                      name2: 'NANA',
                      name3: 'MARK',
                      task1: 'WEEKLY',
                      task2: 'PLANNING',
                      isMine: false,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
