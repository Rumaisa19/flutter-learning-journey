import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counterProvider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the counter value
    final count = context.watch<CounterProvider>().count;

    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        toolbarHeight: 80,
        backgroundColor: Colors.blue,
        title: const Text(
          'Counter App',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pressed the button:',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 40),
            Text(
              '$count',
              style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    context.read<CounterProvider>().decrement();
                  },
                  icon: const Icon(Icons.remove, size: 30, color: Colors.white),
                  label: const Text('Decrement'),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                ),
                const SizedBox(width: 25),
                ElevatedButton.icon(
                  onPressed: () {
                    context.read<CounterProvider>().increment();
                  },
                  icon: const Icon(Icons.add, size: 30, color: Colors.white),
                  label: const Text('Increment'),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
