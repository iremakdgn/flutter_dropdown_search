import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // ignore: sized_box_for_whitespace
      body: Container(
        width: 200,
        child: DropdownSearch<String>(
          // ignore: prefer_const_constructors
          dropdownSearchBaseStyle: TextStyle(
            fontSize: 12,
            color: Colors.black38,
          ),
          showClearButton: true,
          mode: Mode.MENU,
          showSearchBox: true,
          showSelectedItems: true,
          items: const ["Brazil", "Italia", "Tunisia", 'Canada'],
          onChanged: print,
          searchFieldProps: TextFieldProps(
            decoration: const InputDecoration(
              labelText: "",
              labelStyle: TextStyle(color: Colors.black54),
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(gapPadding: 4),
              contentPadding: EdgeInsets.fromLTRB(12, 0, 0, 0),
            ),
          ),
          popupElevation: 16,
          popupShape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          dropdownButtonBuilder: (_) => const Padding(
            padding: EdgeInsets.all(0.0),
            child: Icon(
              Icons.arrow_drop_down,
              size: 24,
              color: Colors.black54,
            ),
          ),
          scrollbarProps: ScrollbarProps(
            isAlwaysShown: false,
            thickness: 7,
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
