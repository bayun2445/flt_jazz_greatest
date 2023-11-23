import 'package:flt_jazz_greatest/styles.dart';
import 'package:flutter/material.dart';

class BioDataRow extends StatelessWidget {
  const BioDataRow({super.key, required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "$label: ",
            style: const TextStyle(
              fontSize: 13.0,
              fontFamily: fontLora,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 13.0,
              fontFamily: fontLora,
            ),
            overflow: TextOverflow.clip,
          ),
        ],
      ),
    );
  }
}