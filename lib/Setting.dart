import 'package:flutter/material.dart';

void main() {
  runApp(Setting());
}

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.tealAccent[400],
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context),
          ),
          title: Text('Setting'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            ListTile(
              title: Text(
                'Setting',
                style: TextStyle(fontSize: 15, color: Colors.yellow),
              ),
            ),
            ListTile(
              title: Text('Languange'),
              leading: Icon(Icons.messenger_outline_sharp),
            ),
            ListTile(
              title: Text('Currency'),
              leading: Icon(Icons.notifications),
            ),
            ListTile(
              title: Text('Notification'),
              leading: Icon(Icons.lock),
            ),
            ListTile(
              title: Text(
                'Support',
                style: TextStyle(fontSize: 15, color: Colors.yellow),
              ),
            ),
            ListTile(
              title: Text('Custumer Service'),
              leading: Icon(Icons.storage),
            ),
            ListTile(
              title: Text('Announcements'),
              leading: Icon(Icons.announcement_outlined),
            ),
            ListTile(
              title: Text(
                'About Merch Shop',
                style: TextStyle(fontSize: 15, color: Colors.yellow),
              ),
            ),
            ListTile(
              title: Text('Events'),
              leading: Icon(Icons.language_outlined),
            ),
            ListTile(
              title: Text('Terms and Policy'),
              leading: Icon(Icons.emoji_emotions_outlined),
            )
          ],
        ),
      ),
    );
  }
}
