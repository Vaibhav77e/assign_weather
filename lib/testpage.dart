import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './services/request.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    final getDataN = Provider.of<Request>(context);
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => getDataN.getData(),
          child: const Text('Get data'),
        ),
      ),
    );
  }
}
