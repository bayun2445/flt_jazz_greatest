import 'package:flt_jazz_greatest/model/legend_data.dart';
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
              fontFamily: textHeader,
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

                  return InkWell(
                    onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return DetailScreen(legend: legend,);
                        }));
                    },
                    child: Card(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                height: 65.0,
                                width: 65.0,
                                  legend.image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  legend.name,
                                  style: const TextStyle(
                                    color: colorTextHeader,
                                    fontFamily: textHeader,
                                    fontSize: 21.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Instrument: ${legend.instrument}",
                                  style: const TextStyle(
                                    fontFamily: "Lora",
                                    fontSize: 16.0
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
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