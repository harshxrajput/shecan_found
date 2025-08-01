// lib/screens/dashboard_screen.dart
import 'package:flutter/material.dart';
import 'package:shecan_found/mock_data.dart';
import '../screens/reward.dart';
import 'leaderboard.dart';
import 'announcement.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AnnouncementsScreen()),
              );
            },
          )
        ],
      ),
      drawer: _buildDrawer(context),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Intern Info
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello, ${MockData.internName}',
                      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    _infoRow('Referral Code', MockData.referralCode),
                    _infoRow('Total Raised', MockData.totalDonations),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Rewards
            Text('Your Rewards', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 12),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: MockData.rewards.length,
                itemBuilder: (ctx, i) {
                  final item = MockData.rewards[i];
                  return RewardCard(
                    title: item['title'] as String,
                    unlocked: item['unlocked'] as bool,
                  );
                },
              ),
            ),

            const SizedBox(height: 30),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LeaderboardScreen()),
                  );
                },
                icon: const Icon(Icons.leaderboard, color: Colors.black), // Optional: explicit icon color
                label: const Text('View Leaderboard', style: TextStyle(color: Colors.black)), // Text color
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,   // Background color
                  foregroundColor: Colors.black, // 👈 This controls icon and text color
                  padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                ),
              )
            )
          ],
        ),
      ),
    );
  }

  Widget _infoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(color: Colors.grey)),
          Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: Color(0xFF1A73E8)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Icon(Icons.person, size: 40, color: Colors.white),
                const SizedBox(height: 8),
                Text(
                  MockData.internName,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.dashboard),
            title: const Text('Dashboard'),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            leading: const Icon(Icons.leaderboard),
            title: const Text('Leaderboard'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LeaderboardScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.campaign),
            title: const Text('Announcements'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AnnouncementsScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}