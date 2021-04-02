import 'package:flutter/material.dart';

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Container(child: Center(child: Text("Adepti Store"))),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("Search");
            },
          ),
          IconButton(
              icon: Icon(Icons.notifications_active),
              onPressed: () {
                print("Start");
              }),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Agus Suparsana"),
              accountEmail: new Text("suparsana182@gmail.com"),
              currentAccountPicture: new GestureDetector(
                onTap: () {},
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage(
                      'https://static.wikia.nocookie.net/kangaroos/images/b/b4/Paimon.png/revision/latest/scale-to-width-down/340?cb=20201004212929'),
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: new NetworkImage(
                        'https://pbs.twimg.com/media/Epb4IfiXUAAuG9X.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            new ListTile(
              title: new Text("Settings"),
              trailing: new Icon(Icons.settings_applications),
            ),
            new ListTile(
              title: new Text("Account"),
              trailing: new Icon(Icons.account_box),
            ),
            new ListTile(
              title: new Text("Notifications"),
              trailing: new Icon(Icons.notifications_none),
            ),
            new ListTile(
              title: new Text("Wishlist"),
              trailing: new Icon(Icons.bookmark_border),
            ),
            new ListTile(
              title: new Text("About"),
              trailing: new Icon(Icons.warning),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Genshin_Impact_logo.svg/1200px-Genshin_Impact_logo.svg.png'),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Rp.0",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.payment,
                  color: Colors.green,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Theme.of(context).dividerColor)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.attach_money,
                      color: Colors.black,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        "Top Up",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.people,
                      color: Colors.black,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        "Character",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.handyman,
                      color: Colors.black,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        "Joki",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.black
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Contact MidMan at suparsana182@gmail.com ",
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Image.network(
              'https://staticg.sportskeeda.com/editor/2021/02/58402-16139236626495-800.jpg'),
        ],
      ),
    );
  }
}