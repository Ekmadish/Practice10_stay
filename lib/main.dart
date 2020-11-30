// import 'package:Practice10_Estay/func.dart';
import 'package:Practice10_Estay/home.dart';
import 'package:Practice10_Estay/model.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // final Bus bus;

  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
      defaultBrightness: Brightness.light,
      data: (brightness) => ThemeData(
        brightness: brightness,
      ),
      themedWidgetBuilder: (context, theme) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme,
          home: Home(),
        );
      },
    );
  }
}

class Home extends StatelessWidget {
  void themeSwitch(context) {
    DynamicTheme.of(context).setBrightness(
        Theme.of(context).brightness == Brightness.dark
            ? Brightness.light
            : Brightness.dark);
  }

  final List<Bus> bus = [];

  @override
  Widget build(BuildContext context) {
    bool mod = DynamicTheme.of(context).brightness == Brightness.dark;

    for (int i = 0; i < 5; i++) {
      bus.add(
        Bus(
            id: 1,
            info: "That is bus info",
            name: "BusName",
            url:
                "https://tengrinews.kz/userdata/news/2019/news_360851/thumb_m/photo_269591.jpeg",
            stationName: 'Arlan',
            time: "17:17",
            type: 'ONLINE'),
      );
    }
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('mobile home work'),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Bus List'),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: [
          IconButton(
              icon: Icon(mod ? Icons.wb_sunny : Icons.bedtime),
              onPressed: () => themeSwitch(context))
        ],
      ),
      body: mainScreen(
        bus: bus,
      ),
    );
  }
}
