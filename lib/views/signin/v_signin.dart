import 'package:flutter/material.dart';

class VSignIn extends StatelessWidget {
  const VSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign in'),
      ),
      body: ListView(
        children: [
          const TextField(
            decoration: InputDecoration(
              labelText: 'Enter email'
            ),
          ),
          const TextField(
            decoration: InputDecoration(
                labelText: 'Enter email'
            ),
          ),
          ElevatedButton(
              onPressed: (){},
              child: const Text('SUBMIT')
          ),

          const Text('00bbb0')
        ],
      ),
    );
  }
}
