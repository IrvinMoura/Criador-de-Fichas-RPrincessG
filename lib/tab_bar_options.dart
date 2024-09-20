import 'package:flutter/material.dart';

class TabBarOptions extends StatelessWidget {
  const TabBarOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Criador de Fichas',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.pink,
          actions: const [
            IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
              iconSize: 30,
              hoverColor: Colors.amber,
              onPressed: null,
            ),
          ],
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.list),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Text('Home Page'),
            ),
            Center(
              child: Text('List Page'),
            ),
          ],
        ),
      ),
    );
  }
}
