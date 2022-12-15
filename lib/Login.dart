import 'package:flutter/material.dart';
import 'DrawerPage.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8),
        color: Colors.white70,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration:
                  BoxDecoration(color: Colors.yellow, shape: BoxShape.circle),
              child: Center(
                child: Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.white38,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Merch Shop",
              style: TextStyle(fontSize: 40, color: Colors.tealAccent[400]),
            ),
            Text(
              "All Things For Fun",
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.tealAccent[400]),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.yellow)),
                  prefixIcon: Icon(
                    Icons.person,
                    size: 40,
                  ),
                  hintText: "Add",
                  hintStyle: TextStyle(color: Colors.grey),
                  labelText: "Username",
                  labelStyle: TextStyle(color: Colors.grey)),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.yellow)),
                  prefixIcon: Icon(
                    Icons.lock,
                    size: 40,
                  ),
                  hintText: "Add Password",
                  hintStyle: TextStyle(color: Colors.grey),
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.grey)),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              color: Colors.tealAccent[400],
              elevation: 5,
              child: Container(
                height: 40,
                child: InkWell(
                  splashColor: Colors.white,
                  onTap: () {
                    child:
                    Center(
                      child: Text("Login",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    );
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return DrawerPage();
                    }));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
