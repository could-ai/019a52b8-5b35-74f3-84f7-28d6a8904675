import 'package:flutter/material.dart';
import 'package:couldai_user_app/models/prayer.dart';
import 'package:couldai_user_app/screens/prayer_detail_screen.dart';
import 'package:couldai_user_app/widgets/prayer_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Prayer> prayers = [
      Prayer(title: 'Opening Prayer', description: 'A prayer to start the conference, asking for guidance and wisdom.'),
      Prayer(title: 'Prayer for Speakers', description: 'Pray for clarity, courage, and impact for all the speakers.'),
      Prayer(title: 'Prayer for Attendees', description: 'Pray for receptive hearts, networking opportunities, and safe travels for all attendees.'),
      Prayer(title: 'Prayer for Unity', description: 'A prayer for unity and fellowship among all participants.'),
      Prayer(title: 'Closing Prayer', description: 'A prayer to conclude the conference, with thanksgiving and a blessing for the journey home.'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Prayer Topics'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemCount: prayers.length,
        itemBuilder: (context, index) {
          return PrayerCard(
            prayer: prayers[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PrayerDetailScreen(prayer: prayers[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
