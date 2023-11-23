import 'package:flt_jazz_greatest/model/legend_data.dart';
import 'package:flt_jazz_greatest/screen/component/item_legend.dart';
import 'package:flt_jazz_greatest/screen/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flt_jazz_greatest/styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
  String query = '';

  List<Legend> filteredList = [];

  @override
  Widget build(BuildContext context) {
    if (query.isEmpty) {
      filteredList = legendList;
    } else {
      filteredList = legendList
          .where((legend) => legend.name.toLowerCase().contains(query)).toList();
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
            "Jazz Greatest",
            style: TextStyle(
              fontFamily: fontTextMeOne,
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
        crossAxisAlignment: CrossAxisAlignment.center,
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

          Expanded(
            child: ListView.builder(
                itemCount: filteredList.length,
                itemBuilder: (context, index) {
                  final Legend legend = filteredList[index];

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: InkWell(
                      onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return DetailScreen(legend: legend,);
                          }));
                      },
                      child: ItemLegend(legend: legend,)
                    ),
                  );
                }
            ),
          )
        ],
      ),
    );
  }
}