import 'package:flutter/material.dart';

class VCounter extends StatelessWidget {
  const VCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('data')
          ],
        ),
      )
    );
  }
}
