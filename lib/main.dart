import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            height: 50,
          ),
          const ListTile(
            title: Text(
              'Select Your Bank',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Text(
              'cancel',
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
          ),

          // search tab with icon
          Row(
            children: [
              Flexible(
                flex: 1,
                child: TextField(
                  cursorColor: Color.fromARGB(255, 5, 129, 178),
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                      prefixIcon: Container(
                        padding: EdgeInsets.all(15),
                        child: Image.asset('assets/icons/search.png'),
                        width: 18,
                      )),
                ),
              ),
            ],
          ),
          // list of the Banks
          ListTile(
            leading: CircleAvatar(
              child: Image.asset('assets/icons/images (4).png'),
            ),
            title: const Text(
              'Citibank Online',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('https://www.citibank.go.ke/',
                style: TextStyle(fontWeight: FontWeight.w200)),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Image.asset('assets/icons/images (1).png'),
            ),
            title: const Text(
              'Bank of America',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('https://www.bankofamerica.go.ke/'),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Image.asset('assets/icons/images.png'),
            ),
            title: const Text(
              'Chase',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('https://www.chase.go.ke/',
                style: TextStyle(fontWeight: FontWeight.w200)),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Image.asset('assets/icons/images (1).png'),
            ),
            title: const Text(
              ' American Express',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('https://www.americanexpress.go.ke/',
                style: TextStyle(fontWeight: FontWeight.w200)),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Image.asset('assets/icons/images (3).png'),
            ),
            title: const Text(
              'Discover',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('https://www.discover.go.ke/',
                style: TextStyle(fontWeight: FontWeight.w200)),
          ),
          ListTile(
              leading: CircleAvatar(
                child: Image.asset('assets/icons/images (2).png'),
              ),
              title: const Text(
                'U.S. bank',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('https://www.centralbank.go.ke/',
                  style: TextStyle(fontWeight: FontWeight.w200))),
        ],
      ),
    );
  }
}
