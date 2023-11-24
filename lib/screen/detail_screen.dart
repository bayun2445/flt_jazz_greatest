import 'package:flt_jazz_greatest/screen/component/biodata_row.dart';
import 'package:flutter/material.dart';
import '../model/legend_data.dart';
import '../styles.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.legend});

  final Legend legend;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
              Icons.arrow_back_ios
          ),
          color: Theme.of(context).colorScheme.onPrimary,
        ),
        title: Text(
            "Jazz Greatest",
            style: TextStyle(
                fontFamily: fontTextMeOne,
                color: Theme.of(context).colorScheme.onPrimary,
                fontWeight: FontWeight.bold,
            )
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
              child: Text(
                  legend.name,
                  style: const TextStyle(
                    fontFamily: fontLora,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: colorTextHeader,
                  ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    elevation: 8.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset(
                          legend.image,
                          fit: BoxFit.cover,
                          height: 120,
                          width: 100,
                      ),
                    ),
                  ),
                  const SizedBox(width: 3.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BioDataRow(label: "Birth Name", value: legend.birthName),
                      BioDataRow(label: "Born", value: legend.born),
                      BioDataRow(label: "Died", value: legend.died),
                      BioDataRow(label: "Years Active", value: legend.yearsActive),
                      BioDataRow(label: "Instrument", value: legend.instrument),
                      BioDataRow(label: "Popular Song", value: legend.popularSong),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 12.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 18.0),
                  child: Text(
                    legend.summary,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      fontSize: 14.0,
                      fontFamily: fontLora,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}