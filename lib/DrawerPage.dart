import 'package:flutter/material.dart';
import 'package:uas_prakmobile/Login.dart';
import 'package:uas_prakmobile/models/Produk.dart';

import 'Profile.dart';
import 'Login.dart';
import 'Setting.dart';
import 'Product.dart';

void main() {
  runApp(DrawerPage());
}

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.tealAccent[400],
          title: Text("Merch Shop"),
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.white,
            // ignore: unnecessary_new
            child: new ListView(
              padding: EdgeInsets.zero,
              children: [
                InkWell(
                    child: Container(
                        color: Colors.tealAccent[400],
                        child: new UserAccountsDrawerHeader(
                          currentAccountPicture: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://i.pinimg.com/564x/1b/72/77/1b72771a72cbf816822b7cbdd4009b5d.jpg'),
                          ),
                          accountName: Text("Adelia Tasya Vanessa"),
                          accountEmail: Text("adeliatasya48@gmail.com"),
                        )),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return Profile();
                        },
                      ));
                    }),
                // ListTile(
                //   leading: Icon(Icons.shop_outlined),
                //   title: Text("Product"),
                //   onTap: () {
                //     Navigator.push(context,
                //         MaterialPageRoute(builder: (context) {
                //       return MyWidget();
                //     }));
                //   },
                // )

                ListTile(
                  leading: Icon(Icons.menu),
                  title: Text("Setting"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Setting();
                    }));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.logout_outlined),
                  title: Text("Logout"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Login();
                    }));
                  },
                )
              ],
            ),
          ),
        ),
        body: ListView(padding: const EdgeInsets.all(8), children: <Widget>[
          ListTile(
            title: Padding(
              padding: EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Alita',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    '2.33',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('I want to buy the clothes'),
                  Icon(
                    Icons.done_all,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://i.pinimg.com/736x/37/2f/00/372f000f3b54825567ab3bbf5094e9ab.jpg'),
            ),
          ),
          ListTile(
            title: Padding(
              padding: EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'The Shop',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    '6.19',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('How to check out this hat?'),
                  Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                      child: Text(
                        '3',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      maxRadius: 13,
                    ),
                  )
                ],
              ),
            ),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://lh3.googleusercontent.com/eYnzMYFo95RxdkqI2OKmDExzsGmqEN9erWWB8_Ok8u81xSCfVwtWELU8apk3Lsx0up3uxTmJHAWuEw0vbc2j_FrpVgzRYKeqAtXh-L7IcLgjCw=w960-rj-nu-e365'),
            ),
          ),
        ]));
  }
}
