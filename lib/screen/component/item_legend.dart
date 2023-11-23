import 'package:flutter/material.dart';
import '../../model/legend_data.dart';
import '../../styles.dart';

class ItemLegend extends StatelessWidget {
  const ItemLegend({super.key, required this.legend});

  final Legend legend;

  @override
  Widget build(BuildContext context) {
    return Card(
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text(
                  legend.name,
                  style: const TextStyle(
                    color: colorTextHeader,
                    fontFamily: fontTextMeOne,
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
    );
  }
}