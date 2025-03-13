import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _isNightMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _isNightMode ? Colors.black : Colors.grey[200],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore, color: Colors.grey),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.grey),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map, color: Colors.grey),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.brown),
            label: 'Compte',
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.brown,
            height: 150,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey,
                  ),
                  SizedBox(height: 10),
                  Text('Elizabeth Taylor',
                      style: TextStyle(
                          color: _isNightMode ? Colors.white : Colors.black,
                          fontSize: 18)),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16),
              children: [
                _buildSectionTitle('ACCOUNT'),
                _buildListTile(Icons.person, 'Personal information'),
                Divider(color: _isNightMode ? Colors.white : Colors.grey),
                _buildSectionTitle('APPEARANCE'),
                _buildSwitchTile('Night mode', _isNightMode),
                _buildListTile(Icons.text_fields, 'Text size',
                    subtitle: 'Medium'),
                Divider(color: _isNightMode ? Colors.white : Colors.grey),
                _buildSectionTitle('OTHER SETTINGS'),
                _buildListTile(Icons.security, 'Security'),
                _buildListTile(Icons.privacy_tip, 'Privacy',
                    trailingIcon: Icons.warning_amber_rounded),
                _buildListTile(Icons.notifications, 'Notification'),
                _buildListTile(Icons.help_outline, 'Help & Support'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(title,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: _isNightMode ? Colors.white : Colors.grey[600])),
    );
  }

  Widget _buildListTile(IconData icon, String title,
      {String? subtitle, IconData? trailingIcon}) {
    return ListTile(
      leading: Icon(icon, color: _isNightMode ? Colors.white : Colors.black54),
      title: Text(title,
          style: TextStyle(color: _isNightMode ? Colors.white : Colors.black)),
      subtitle: subtitle != null
          ? Text(subtitle,
              style: TextStyle(
                  color: _isNightMode ? Colors.white : Colors.black54))
          : null,
      trailing: trailingIcon != null
          ? Icon(trailingIcon, color: Colors.amber)
          : Icon(Icons.arrow_forward_ios,
              size: 16, color: _isNightMode ? Colors.white : Colors.black54),
      onTap: () {},
    );
  }

  Widget _buildSwitchTile(String title, bool value) {
    return SwitchListTile(
      title: Text(title,
          style: TextStyle(color: _isNightMode ? Colors.white : Colors.black)),
      value: value,
      onChanged: (bool newValue) {
        setState(() {
          _isNightMode = newValue;
        });
      },
    );
  }
}
