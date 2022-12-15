import 'package:flutter/material.dart';

void main() {
  runApp(Profile());
}

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://i.pinimg.com/564x/1b/72/77/1b72771a72cbf816822b7cbdd4009b5d.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  bottom: 7,
                  left: 120,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text('Adelia Tasya Vanessa'),
                        Text(
                          'Online',
                          style: TextStyle(fontWeight: FontWeight.w200),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            ListTile(
              title: Text(
                'Account',
                style: TextStyle(fontSize: 15, color: Colors.tealAccent[400]),
              ),
            ),
            ListTile(
              title: Text(
                'My Order',
                style: TextStyle(fontSize: 17),
              ),
              subtitle: Text(
                'Order Your Product',
                style: TextStyle(fontWeight: FontWeight.w200),
              ),
            ),
            ListTile(
              title: Text(
                'Return and Exchange',
                style: TextStyle(fontSize: 15),
              ),
            ),
            ListTile(
              title: Text(
                'Shipping Address',
                style: TextStyle(fontSize: 17),
              ),
              subtitle: Text('Probolinggo, Indonesia.'),
            )
          ],
        ),
      ),
    );
  }
}
