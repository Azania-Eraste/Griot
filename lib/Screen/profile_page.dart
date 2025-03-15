import 'package:flutter/material.dart';
import 'profilsettings.dart';
import 'privacy_page.dart';
import 'help_support_page.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _isNightMode = false;
  String _firstName = 'Elizabeth';
  String _lastName = 'Taylor';
  String _phoneNumber = '123-456-7890';
  DateTime? _birthday;

  void _updateProfile(String firstName, String lastName, String phoneNumber,
      DateTime birthday) {
    setState(() {
      _firstName = firstName;
      _lastName = lastName;
      _phoneNumber = phoneNumber;
      _birthday = birthday;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
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
                    Text('$_firstName $_lastName',
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
                  _buildListTile(Icons.person, 'Personal information', onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ProfileSettingsPage(onSave: _updateProfile),
                      ),
                    );
                  }),
                  Divider(color: _isNightMode ? Colors.white : Colors.grey),
                  _buildSectionTitle('APPEARANCE'),

                  Divider(color: _isNightMode ? Colors.white : Colors.grey),
                  _buildSectionTitle('OTHER SETTINGS'),
                  _buildListTile(Icons.security, 'Security'),
                  _buildListTile(Icons.privacy_tip, 'Privacy',
                      trailingIcon: Icons.warning_amber_rounded, onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PrivacyPage(),
                      ),
                    );
                  }),
                  _buildListTile(Icons.help_outline, 'Help & Support', onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HelpSupportPage(),
                      ),
                    );
                  }),
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
      {String? subtitle, IconData? trailingIcon, VoidCallback? onTap}) {
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
      onTap: onTap,
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
