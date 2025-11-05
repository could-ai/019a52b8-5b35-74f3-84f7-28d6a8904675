import 'package:flutter/material.dart';
import 'package:couldai_user_app/models/prayer.dart';

class PrayerCard extends StatelessWidget {
  final Prayer prayer;
  final VoidCallback onTap;

  const PrayerCard({super.key, required this.prayer, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: const Icon(Icons.book, color: Colors.blue),
        title: Text(prayer.title),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: onTap,
      ),
    );
  }
}
