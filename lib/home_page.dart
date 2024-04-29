import 'package:flutter/material.dart';
import 'package:smart_door/constant.dart';
import 'package:smart_door/server_one.dart';
import 'package:smart_door/server_two.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Smart door',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 150),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(primaryColor)),
                onPressed: () {
                  print('Clicked the server one button');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ServerOne(),
                    ),
                  );
                },
                child: const Text(
                  'Server 1',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            // Add space between buttons
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 150),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(primaryColor)),
                onPressed: () {
                  print('Clicked the server two button');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ServerTwo(),
                    ),
                  );
                },
                child: const Text(
                  'Server 2',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
