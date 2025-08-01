// lib/screens/announcements_screen.dart
import 'package:flutter/material.dart';
import 'package:shecan_found/mock_data.dart';

class AnnouncementsScreen extends StatelessWidget {
  const AnnouncementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Announcements')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Latest Updates',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                itemCount: MockData.announcements.length,
                separatorBuilder: (_, __) => const Divider(),
                itemBuilder: (ctx, index) {
                  return ListTile(
                    leading: const Icon(Icons.circle, size: 10, color: Colors.green),
                    title: Text(MockData.announcements[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}