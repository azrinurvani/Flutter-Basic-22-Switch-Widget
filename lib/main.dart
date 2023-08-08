import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool statusSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Switch Text"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.grey,
              child: Switch.adaptive(
                //method Switch.adaptive() bermaksud agar menyesuaikan dengan tampilan IOS dan Android
                activeColor: Colors.amber,
                activeTrackColor:
                    Colors.green, //track adalah bagian jalur swith
                inactiveThumbColor:
                    Colors.indigo, //thum adalah bagian lingkaran
                inactiveTrackColor: Colors.red,
                activeThumbImage: const AssetImage("images/true.png"),
                inactiveThumbImage: const AssetImage("images/false.png"),

                value: statusSwitch,
                onChanged: (value) {
                  setState(() {
                    statusSwitch = value;
                  });
                  if (kDebugMode) {
                    print(statusSwitch);
                  }
                },
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              statusSwitch ? "Switch On" : "Switch Off",
              style: const TextStyle(
                fontSize: 35,
              ),
            )
          ],
        ),
      ),
    );
  }
}
