import 'package:flt_jazz_greatest/styles.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          "Jazz Greatest",
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
            fontFamily: fontTextMeOne,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Theme.of(context).colorScheme.onPrimary,
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            ClipOval(
              child: Image.asset(
                "asset/image/thad_jones.png",
                fit: BoxFit.cover,
                width: 200,
                height: 200,
              ),
            ),
            const SizedBox(
              height: 100.0,
            ),
            Text(
              "Bayu Nugroho",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontFamily: fontTextMeOne,
                fontSize: 30.0,
                fontWeight: FontWeight.bold
              ),
            ),
            const Text(
              "bayun2445@gmail.com",
              style: TextStyle(
                color: Colors.grey,
                fontFamily: fontLora,
                fontSize: 18.0,
              ),
            )
          ],
        ),
      ),
    );
  }

}