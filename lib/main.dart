import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:url_launcher/url_launcher.dart';
// import 'dart:io' ;

Future<void> launchURL(Uri urlString) async {
  if (await canLaunchUrl(urlString)) {
    // Check if the URL can be launched
    await launchUrl(urlString);
  } else {
    throw 'Could not launch $urlString'; // throw could be used to handle erroneous situations
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme:
              ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 29, 164, 65)),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState.current;

    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              // Text('.244 track east:'),
              // BigCard(pair: pair),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                  onPressed: () {
                    print('button pressed!');
                    String urlString = "http://192.168.3.241/track/start";
                    Uri uri = Uri.parse(urlString);
                    launchURL(uri);
                  },
                  child: Text('.241 start'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                  onPressed: () {
                    print('button pressed!');
                    String urlString = "http://192.168.3.241/track/stop";
                    Uri uri = Uri.parse(urlString);
                    launchURL(uri);
                  },
                  child: Text('.241 stop'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                  onPressed: () {
                    print('button pressed!');
                    String urlString = "http://192.168.3.241/track/east";
                    Uri uri = Uri.parse(urlString);
                    launchURL(uri);
                  },
                  child: Text('.241 track east'),
                ),
              ),
              // Text('.244 track west:'),
              // BigCard(pair: pair),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                  onPressed: () {
                    print('button pressed!');
                    String urlString = "http://192.168.3.241/track/west";
                    Uri uri = Uri.parse(urlString);
                    launchURL(uri);
                  },
                  child: Text('.241 track west'),
                ),
              ),
            ],
          ),
          Row(
            children: [
              // Text('.244 track east:'),
              // BigCard(pair: pair),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                  onPressed: () {
                    print('button pressed!');
                    String urlString = "http://192.168.3.242/track/start";
                    Uri uri = Uri.parse(urlString);
                    launchURL(uri);
                  },
                  child: Text('.242 start'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                  onPressed: () {
                    print('button pressed!');
                    String urlString = "http://192.168.3.242/track/stop";
                    Uri uri = Uri.parse(urlString);
                    launchURL(uri);
                  },
                  child: Text('.242 stop'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                  onPressed: () {
                    print('button pressed!');
                    String urlString = "http://192.168.3.242/track/east";
                    Uri uri = Uri.parse(urlString);
                    launchURL(uri);
                  },
                  child: Text('.242 track east'),
                ),
              ),
              // Text('.244 track west:'),
              // BigCard(pair: pair),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                  onPressed: () {
                    print('button pressed!');
                    String urlString = "http://192.168.3.242/track/west";
                    Uri uri = Uri.parse(urlString);
                    launchURL(uri);
                  },
                  child: Text('.242 track west'),
                ),
              ),
            ],
          ),
          Row(
            children: [
              // Text('.244 track east:'),
              // BigCard(pair: pair),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                  onPressed: () {
                    print('button pressed!');
                    String urlString = "http://192.168.3.243/track/start";
                    Uri uri = Uri.parse(urlString);
                    launchURL(uri);
                  },
                  child: Text('.243 start'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                  onPressed: () {
                    print('button pressed!');
                    String urlString = "http://192.168.3.243/track/stop";
                    Uri uri = Uri.parse(urlString);
                    launchURL(uri);
                  },
                  child: Text('.243 stop'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                  onPressed: () {
                    print('button pressed!');
                    String urlString = "http://192.168.3.243/track/east";
                    Uri uri = Uri.parse(urlString);
                    launchURL(uri);
                  },
                  child: Text('.243 track east'),
                ),
              ),
              // Text('.244 track west:'),
              // BigCard(pair: pair),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                  onPressed: () {
                    print('button pressed!');
                    String urlString = "http://192.168.3.243/track/west";
                    Uri uri = Uri.parse(urlString);
                    launchURL(uri);
                  },
                  child: Text('.243 track west'),
                ),
              ),
            ],
          ),
          Row(
            children: [
              // Text('.244 track east:'),
              // BigCard(pair: pair),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                  onPressed: () {
                    print('button pressed!');
                    String urlString = "http://192.168.3.244/track/start";
                    Uri uri = Uri.parse(urlString);
                    launchURL(uri);
                  },
                  child: Text('.244 start'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                  onPressed: () {
                    print('button pressed!');
                    String urlString = "http://192.168.3.244/track/stop";
                    Uri uri = Uri.parse(urlString);
                    launchURL(uri);
                  },
                  child: Text('.244 stop'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                  onPressed: () {
                    print('button pressed!');
                    String urlString = "http://192.168.3.244/track/east";
                    Uri uri = Uri.parse(urlString);
                    launchURL(uri);
                  },
                  child: Text('.244 track east'),
                ),
              ),
              // Text('.244 track west:'),
              // BigCard(pair: pair),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                  onPressed: () {
                    print('button pressed!');
                    String urlString = "http://192.168.3.244/track/west";
                    Uri uri = Uri.parse(urlString);
                    launchURL(uri);
                  },
                  child: Text('.244 track west'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BigCard extends StatelessWidget {
  const BigCard({
    super.key,
    required this.pair,
  });

  final WordPair pair;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Text(pair.asLowerCase),
    );
  }
}
