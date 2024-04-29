import 'package:flutter/material.dart';
import 'package:smart_door/constant.dart';
import 'package:url_launcher/url_launcher.dart';

class ServerOne extends StatelessWidget {
  const ServerOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: primaryColor,
        title: const Text(
          'Server one',
          style: TextStyle(color: Colors.white),
        ),
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
                onPressed: () async {
                  print('SERVER ONE STREAM BUTTON CLICKED');
                  const url = 'http://192.168.65.153';
                  if (await canLaunchUrl(Uri.parse(url))) {
                    await launchUrl(Uri.parse(url));
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: const Text(
                  'Stream',
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
                onPressed: () async {
                  print('SERVER ONE UNLOCK DOOR BUTTON CLICKED');
                  const url = 'http://192.168.65.153/RelayOpen';
                  if (await canLaunchUrl(Uri.parse(url))) {
                  await launchUrl(Uri.parse(url));
                  } else {
                  throw 'Could not launch $url';
                  }

                },
                child: const Text(
                  'Unlock Door',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 150),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(primaryColor)),
                onPressed: () async {
                  print('SERVER ONE LOCK DOOR BUTTON CLICKED');
                  const url = 'http://192.168.65.153/RelayClose';
                  if (await canLaunchUrl(Uri.parse(url))) {
                  await launchUrl(Uri.parse(url));
                  } else {
                  throw 'Could not launch $url';
                  }
                },
                child: const Text(
                  'Lock Door',
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
