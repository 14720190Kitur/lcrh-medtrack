
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
      appBar: AppBar(title: Text('LCRH MedTrack'), backgroundColor: Colors.blue),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.local_hospital, size: 100, color: Colors.blue),
            SizedBox(height: 20),
            Text('LCRH MedTrack', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Medical Tracking System', style: TextStyle(fontSize: 16)),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => TrackPatientScreen()));
              },
              child: Text('Track Patient'),
              style: ElevatedButton.styleFrom(minimumSize: Size(200, 50)),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => ViewRecordsScreen()));
              },
              child: Text('View Records'),
              style: ElevatedButton.styleFrom(minimumSize: Size(200, 50)),
            ),
          ],
        ),
      ),
    );
  }
}

class TrackPatientScreen extends StatelessWidget {
  final _name = TextEditingController();
  final _age = TextEditingController();
  final _diag = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Track Patient')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: _name, decoration: InputDecoration(labelText: 'Patient Name', border: OutlineInputBorder())),
            SizedBox(height: 10),
            TextField(controller: _age, decoration: InputDecoration(labelText: 'Age', border: OutlineInputBorder())),
            SizedBox(height: 10),
            TextField(controller: _diag, decoration: InputDecoration(labelText: 'Diagnosis', border: OutlineInputBorder())),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Patient ${_name.text} tracked!')));
                Navigator.pop(context);
              },
              child: Text('Save Record'),
            )
          ],
        ),
      ),
    );
  }
}

class ViewRecordsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('View Records')),
      body: Center(
        child: Text('No records yet - Add patient first', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
