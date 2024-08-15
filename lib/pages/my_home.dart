import 'package:buttons/neumorphism_container.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode? Colors.grey.shade800 : Colors.grey.shade300,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NeumorphismContainer(
              color: darkMode? Colors.grey.shade800 : Colors.grey.shade300,
              shadowTopLeft: darkMode? Colors.grey.shade700 : Colors.grey.shade50 ,
              shadowBottomRight: darkMode? Colors.grey.shade900 : Colors.grey.shade500,
              child:  Icon(
                Icons.apple,
                size: 104,
                color: darkMode? Colors.grey.shade300 : Colors.grey.shade900,
              ),
            ),

            const SizedBox(height: 44),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      darkMode = false;
                    });
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.grey.shade200,
                      padding: const EdgeInsets.symmetric(horizontal: 24)),
                  child: Text(
                    'Light',
                    style: TextStyle(
                      color: Colors.grey.shade900,
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                TextButton(
                  onPressed: () {
                    setState(() {
                      darkMode = true;
                    });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.grey.shade900,
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                  ),
                  child: Text(
                    'Light',
                    style: TextStyle(
                      color: Colors.grey.shade200,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
