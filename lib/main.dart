import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Testing app using Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 0, 136, 221)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'MyHomePage in main'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        centerTitle: true,
        title: Text(
          widget.title,
          style: TextStyle(
            color: Theme.of(context)
                .colorScheme
                .onPrimaryContainer, // Change the text color
            fontSize: 20, // Adjust the font size
            fontWeight: FontWeight.bold, // Make the text bold
          ),
        ),
      ),
      drawer: const Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              margin: EdgeInsets.all(0),
              accountName: Text(
                "ChrisSCR04",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
              accountEmail: Text("Testing@chrisscr04.com"),
              currentAccountPicture: CircleAvatar(
                  backgroundImage:
                      NetworkImage('https://unavatar.io/chrisscr04')),
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text("News"),
              leading: Icon(Icons.newspaper),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text("Sign out"),
              leading: Icon(Icons.logout_outlined),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many time:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 10), // Add spacing between buttons
          FloatingActionButton(
            onPressed: _resetCounter,
            tooltip: 'Reset',
            child: const Icon(Icons.settings_backup_restore_rounded),
          ),
        ],
      ),
    );
  }
}
