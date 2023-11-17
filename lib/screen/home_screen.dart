import 'package:flutter/material.dart';
import 'package:flt_jazz_greatest/styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
  List list = [];
  String query = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
            "Jazz Greatest",
            style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary
            )
        ),
        actions: [
          IconButton(
              onPressed: () {
                // TODO
              },
              icon: Icon(
                  Icons.person,
                  color: Theme.of(context).colorScheme.onPrimary,
              )
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
            child: SearchBar(
              leading: Icon(
                  Icons.search_rounded,
                  color: Theme.of(context).colorScheme.secondary,
              ),
              hintText: "Search",
              onChanged: (newValue) {
                setState(() {
                  query = newValue.toLowerCase();
                });
              },
            ),
          ),
          Text(
              query
          )
        ],
      ),
    );
  }
}