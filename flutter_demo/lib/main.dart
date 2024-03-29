import 'package:flutter/material.dart';
import './home_page.dart';
import './profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme(
          primary: Colors.black,
          onPrimary: Colors.white,
          secondary: Colors.purple,
          onSecondary: Colors.white,
          surface: Colors.green,
          onSurface: Colors.black,
          background: Colors.white,
          onBackground: Colors.black,
          error: Colors.red,
          onError: Colors.white,
          brightness: Brightness.light,
        ),
      ),
      home: const RootPage(),
    );
  }
}

// if widget has state that can change how it looks,
// it should be a StatefulWidget
class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  List<Widget> pages = const [
    HomePage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo'),
      ),
      body: pages[currentPage],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          debugPrint('FloatingActionButton pressed');
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onDestinationSelected: (int index) {
          // tell component to rerender itself
          // with new state
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
