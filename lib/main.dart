// import 'package:Practice10_Estay/func.dart';
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
                "https://tengrinews.kz/userdata/news/2019/news_360851/thumb_m/photo_269591.jpeg"),
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
        body: ListView.builder(
          itemBuilder: (context, index) {
            return SizedBox(
              height: 190,
              child: Card(
                clipBehavior: Clip.antiAlias,
                color: Colors.green,
                elevation: 25,
                margin: EdgeInsets.all(15),
                semanticContainer: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ListTile(
                      focusColor: Colors.red,
                      leading: SizedBox(
                        width: 200.0,
                        height: 200.0,
                        child: Image.network(bus[index].url,
                            fit: BoxFit.cover, width: 100.0),
                      ),
                      title: Container(
                        alignment: Alignment.bottomCenter,
                        height: 25,
                        child: Text(
                          bus[index].name,
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      ),
                      subtitle: Container(
                        height: 35,
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          bus[index].info,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                      contentPadding: EdgeInsets.all(20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () => showDialog(context),
                      child: new Container(
                        width: MediaQuery.of(context).size.width / 1.13,
                        height: 37.0,
                        decoration: new BoxDecoration(
                          color: Colors.green[400],
                          border: new Border.all(color: Colors.red, width: 2.0),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        child: new Center(
                          child: new Text(
                            'Delete',
                            style: new TextStyle(
                                fontSize: 18.0, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: bus.length,
          shrinkWrap: true,
        ));
  }
}

void showDialog(BuildContext c) {
  showGeneralDialog(
    barrierLabel: "Barrier",
    barrierDismissible: true,
    barrierColor: Colors.black.withOpacity(0.5),
    transitionDuration: Duration(milliseconds: 700),
    context: c,
    pageBuilder: (_, __, ___) {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          // color: Colors.green,
          height: 170,
          child: SizedBox(
              child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.center,
                child: Text("Delete",
                    style: TextStyle(
                        color: Colors.lightGreen,
                        decoration: TextDecoration.none)),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    onPressed: () {
                      Fluttertoast.showToast(
                        msg: "No delete fuction",
                      );
                    },
                    child: Text(
                      "Yes",
                      style: TextStyle(decoration: TextDecoration.none),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.pop(c);
                    },
                    child: Text("No",
                        style: TextStyle(decoration: TextDecoration.none)),
                  ),
                ],
              )
            ],
          )),
          margin: EdgeInsets.only(bottom: 50, left: 12, right: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
          ),
        ),
      );
    },
    transitionBuilder: (_, anim, __, child) {
      return SlideTransition(
        position: Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim),
        child: child,
      );
    },
  );
}
