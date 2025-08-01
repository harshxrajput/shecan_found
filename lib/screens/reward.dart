// lib/widgets/reward_card.dart
import 'package:flutter/material.dart';

class RewardCard extends StatelessWidget {
  final String title;
  final bool unlocked;

  const RewardCard({super.key, required this.title, required this.unlocked});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: unlocked ? Colors.green[50] : Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: unlocked ? Colors.green : Colors.grey, width: 1.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            unlocked ? Icons.check_circle : Icons.lock,
            color: unlocked ? Colors.green : Colors.grey,
            size: 30,
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: unlocked ? Colors.green[800] : Colors.grey[700],
            ),
          ),
        ],
      ),
    );
  }
}