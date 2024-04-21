import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri startUrl = Uri.parse('https://t.me/jiliparkph77');
final Uri aboutUrl = Uri.parse(
    'https://www.privacypolicies.com/live/76239e55-aa53-480d-bc1d-85cab91338bb');

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/picture.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 180,
              width: 180,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2),
                  image: DecorationImage(
                      image: AssetImage('assets/playstore.png'))),
            ),
            const Text(
              'Menu',
              style: TextStyle(
                  color: Colors.white, fontSize: 70, fontFamily: 'Lora,'),
            ),
            const SizedBox(height: 25),
            TextButton(
              onPressed: start,
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 235, 97, 216),
                side: const BorderSide(color: Colors.yellow, width: 8),
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
              ),
              child: const Text(
                'Support',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'Lora',
                ),
              ),
            ),
            const SizedBox(height: 15),
            TextButton(
              onPressed: about,
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 235, 97, 216),
                side: const BorderSide(color: Colors.yellow, width: 8),
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
              ),
              child: const Text(
                'Privacy policy',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'Lora',
                ),
              ),
            ),
            const SizedBox(height: 15),
            TextButton(
              onPressed: () => Navigator.pop(context),
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 235, 97, 216),
                side: const BorderSide(color: Colors.yellow, width: 8),
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
              ),
              child: const Text(
                'Close',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'Lora',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> start() async {
    if (!await launchUrl(startUrl)) {
      throw Exception('Could not launch $startUrl');
    }
  }

  Future<void> about() async {
    if (!await launchUrl(aboutUrl)) {
      throw Exception('Could not launch $aboutUrl');
    }
  }
}
