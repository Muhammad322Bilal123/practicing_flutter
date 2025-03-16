import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: const Color.fromRGBO(255, 193, 7, 1),
      // systemNavigationBarIconBrightness: Brightness.dark,
      // statusBarIconBrightness: Brightness.dark,
      // statusBarBrightness: Brightness.dark,
    ),
  );

  // Run App
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyWidget()));
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _sliverBarController(context));
  }

  Widget _sliverBarController(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // Page Bar
        SliverAppBar(
          backgroundColor: const Color.fromRGBO(255, 193, 7, 1),
          title: SizedBox(height: 40, child: CategWidget()),
          floating: true,
          // expandedHeight: 90,
          // bottom: PreferredSize(preferredSize: Size(20, 20), child: Text('s')),
          // flexibleSpace: Placeholder(),
          // actions: [ElevatedButton(onPressed: () {}, child: Text('B'))],
          // collapsedHeight: 0.3,
        ),

        // The List
        SliverList.builder(
          itemCount: 80,
          itemBuilder:
              (context, index) =>
                  Center(child: Image.asset('assets/images/a.jpg')),
        ),
      ],
    );
  }
}

// Categroy Item Widget
class CategWidget extends StatelessWidget {
  CategWidget({super.key});

  // List Of Category Names
  final myListNames = [
    Text('AI'),
    Text('Math'),
    Text('Computer Science'),
    Text('Arts'),
  ];

  final Widget itemWithStyle = Container(
    margin: EdgeInsets.symmetric(horizontal: 8),
    // width: 120,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: Colors.grey,
    ),
    child: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
        child: Text(
          ,
          style: TextStyle(
            color: const Color.fromARGB(255, 1, 26, 243),
            fontSize: 16,
          ),
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: myListNames.length,
      itemBuilder: (context, index) => Text("$myListNames[index]"),
    );
  }
}
