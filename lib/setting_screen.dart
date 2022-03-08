import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:settings_ui/settings_ui.dart';


class SettingScreen extends StatefulWidget {

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Setting',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: SettingsList(
          sections: [
      SettingsSection(
      titlePadding: EdgeInsets.all(20),
      tiles: [
        SettingsTile(
          title: 'Language',
          subtitle: 'English',
          leading: Icon(Icons.language),
          onPressed: (BuildContext context) {

          },
        ),
        SettingsTile.switchTile(
          title: 'Theme',
          leading: Icon(Icons.light_mode_outlined),
          switchValue: isSwitched,
          onToggle: (value) {
            setState(() {
              isSwitched = value;
            });
          },
        ),
      ],
    ),
    ]
      )
    );
  }
}