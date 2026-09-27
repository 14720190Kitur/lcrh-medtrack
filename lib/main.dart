
import 'package:flutter/material.dart';

void main() => runApp(LCRHApp());

class LCRHApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LCRH MedTrack',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LCRH MedTrack'), backgroundColor: Colors.blue[900]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.local_hospital, size: 100, color: Colors.blue[900]),
            SizedBox(height: 20),
            Text('LCRH MedTrack', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Medical Tracking System', style: TextStyle(fontSize: 16, color: Colors.grey)),
            SizedBox(height: 40),
            ElevatedButton(onPressed: (){}, child: Text('Track Patient')),
            SizedBox(height: 10),
            ElevatedButton(onPressed: (){}, child: Text('View Records')),
          ],
        ),
      ),
    );
  }
}
