// lib/utils/mock_data.dart
class MockData {
  static final internName = "Rahul Sharma";
  static final referralCode = "rahulS";
  static final totalDonations = "₹5,000";

  static final rewards = [
    {'title': 'First 10 Referrals', 'unlocked': true},
    {'title': '₹2,000 Raised', 'unlocked': true},
    {'title': 'Top 10 Rank', 'unlocked': false},
    {'title': 'Social Media Badge', 'unlocked': true},
  ];

  static final leaderboard = [
    {'name': 'Priya N.', 'donation': '₹12,400'},
    {'name': 'Amit K.', 'donation': '₹9,800'},
    {'name': 'Rahul S', 'donation': '₹5,000'},
    {'name': 'Neha P.', 'donation': '₹4,600'},
    {'name': 'Vikram J.', 'donation': '₹3,200'},
  ];

  static final announcements = [
    '🎉 Fundraiser Week starts Monday!',
    '📢 Share your referral code to unlock rewards.',
    '🏆 Top 3 interns get gift cards!',
    '📅 Monthly review meeting on 25th.',
  ];
}