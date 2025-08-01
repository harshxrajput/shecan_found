// lib/screens/leaderboard_screen.dart
import 'package:flutter/material.dart';
import 'package:shecan_found/mock_data.dart';

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Leaderboard')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Top Fundraisers',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: MockData.leaderboard.length,
                itemBuilder: (ctx, index) {
                  final item = MockData.leaderboard[index];
                  final isMe = item['name'] == MockData.internName;
                  return Card(
                    color: isMe ? Colors.blue[50] : null,
                    elevation: 2,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Text("${index + 1}"),
                      ),
                      title: Text(
                        item['name']!,
                        style: isMe ? const TextStyle(fontWeight: FontWeight.bold) : null,
                      ),
                      trailing: Text(
                        item['donation']!,
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
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