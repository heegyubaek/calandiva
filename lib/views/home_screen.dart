import 'package:calandiva/utils/colors.dart';
import 'package:calandiva/widgets/home_meeting_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: const Text('Meet & Chat'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HomeMettingButton(
                onPressed: () {},
                text: 'New Meeting',
                icon: Icons.videocam,
              ),
              HomeMettingButton(
                onPressed: () {},
                text: 'Join Meeting',
                icon: Icons.add_box_rounded,
              ),
              HomeMettingButton(
                onPressed: () {},
                text: 'Schedule',
                icon: Icons.calendar_today,
              ),
              HomeMettingButton(
                onPressed: () {},
                text: 'Share Screen',
                icon: Icons.arrow_upward_rounded,
              ),
            ],
          ),
          const Expanded(
            child: Center(
              child: Text(
                'Create/Join Meetings with just a click!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: footerColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: onPageChanged,
        currentIndex: _page,
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 14,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.comment_bank,
            ),
            label: 'Meet & Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.lock_clock,
            ),
            label: 'Meetings',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people_outline,
            ),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
