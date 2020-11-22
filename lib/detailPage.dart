import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:numberpicker/numberpicker.dart';

int nom;

class DetaiPage extends StatefulWidget {
  final String url;
  final String title;
  final String info;
  final String type;
  final String time;
  final String stationName;

  const DetaiPage(
      this.url, this.title, this.info, this.type, this.time, this.stationName);

  @override
  _DetaiPageState createState() => _DetaiPageState(
      info: info,
      stationName: stationName,
      time: time,
      type: type,
      url: url,
      title: title);
}

class _DetaiPageState extends State<DetaiPage> {
  final String url;
  final String title;
  final String info;
  final String type;
  final String time;
  final String stationName;

  _DetaiPageState(
      {this.url,
      this.title,
      this.info,
      this.type,
      this.time,
      this.stationName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (
          context,
          innerBoxIsScrolled,
        ) {
          return [
            SliverAppBar(
              expandedHeight: 150,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                background: Image.network(
                  url,
                  fit: BoxFit.cover,
                ),
              ),
            )
          ];
        },
        body: Align(
          alignment: Alignment.topCenter,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 95,
                ),
                Divider(
                  color: Colors.green,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Name",
                          style: TextStyle(color: Colors.white, fontSize: 24)),
                      Divider(
                        color: Colors.green,
                      ),
                      Text("Time",
                          style: TextStyle(color: Colors.white, fontSize: 24)),
                      Divider(
                        color: Colors.green,
                      ),
                      Text(
                        "Type",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ]),
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      title,
                      style: TextStyle(color: Colors.white),
                    ),
                    Divider(
                      color: Colors.green,
                    ),
                    Text(time),
                    Divider(
                      color: Colors.green,
                    ),
                    FlatButton(
                      onPressed: () => _modalBottomSheetMenu(context),
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.green)),
                      child: Text(
                        type,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      title,
                      style: TextStyle(color: Colors.white),
                    ),
                    Divider(
                      color: Colors.green,
                    ),
                    Text(time),
                    Divider(
                      color: Colors.green,
                    ),
                    FlatButton(
                      onPressed: () => _modalBottomSheetMenu(context),
                      color: Colors.grey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.green)),
                      child: Text(
                        type,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      title,
                      style: TextStyle(color: Colors.white),
                    ),
                    Divider(
                      color: Colors.green,
                    ),
                    Text(time),
                    Divider(
                      color: Colors.green,
                    ),
                    FlatButton(
                      onPressed: () => _modalBottomSheetMenu(context),
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.green)),
                      child: Text(
                        type,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      title,
                      style: TextStyle(color: Colors.white),
                    ),
                    Divider(
                      color: Colors.green,
                    ),
                    Text(time),
                    Divider(
                      color: Colors.green,
                    ),
                    FlatButton(
                      onPressed: () => _modalBottomSheetMenu(context),
                      color: Colors.grey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.green)),
                      child: Text(
                        type,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      title,
                      style: TextStyle(color: Colors.white),
                    ),
                    Divider(
                      color: Colors.green,
                    ),
                    Text(time),
                    Divider(
                      color: Colors.green,
                    ),
                    FlatButton(
                      onPressed: () => _modalBottomSheetMenu(context),
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.green)),
                      child: Text(
                        type,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      title,
                      style: TextStyle(color: Colors.white),
                    ),
                    Divider(
                      color: Colors.green,
                    ),
                    Text(time),
                    Divider(
                      color: Colors.green,
                    ),
                    FlatButton(
                      onPressed: () => _modalBottomSheetMenu(context),
                      color: Colors.grey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.green)),
                      child: Text(
                        type,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

double height = 500.0;
void _modalBottomSheetMenu(BuildContext c) {
  showModalBottomSheet(
      context: c,
      builder: (builder) {
        return Form(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  "Passenger infomation",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              TextFormField(
                textAlign: TextAlign.center,
                decoration: const InputDecoration(hintText: "Aigerim"),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                textAlign: TextAlign.center,
                decoration: const InputDecoration(hintText: "77777777"),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                textAlign: TextAlign.center,
                decoration: const InputDecoration(hintText: "Email"),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Place"),
                  Text("Price"),
                ],
              ),
              // SizedBox(
              //   height: 25,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.black,
                    child: NumberPicker.integer(
                      initialValue: 1,
                      minValue: 1,
                      maxValue: 33,
                      textStyle: TextStyle(color: Colors.white, fontSize: 18),
                      onChanged: (value) {
                        nom = value;
                      },
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        "3000",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 45,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlineButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.red)),
                    onPressed: () {},
                    child: Text(
                      "        Edit        ",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  OutlineButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.red)),
                    onPressed: () {},
                    child: Text(
                      "        Submit        ",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 45,
              ),

              OutlineButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.red)),
                onPressed: () => showAlertDialog(c),
                child: Text(
                  "Cancel purchase",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        );
      });
}

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    contentPadding: EdgeInsets.all(20),
    title: Center(child: Text("Cancel")),
    content: Text("Cancel order ?"),
    actionsPadding: EdgeInsets.only(right: 20, left: 20),
    titlePadding: EdgeInsets.all(20),
    actions: [
      // okButton,
      RaisedButton.icon(
          onPressed: null, icon: Icon(Icons.delete), label: Text("delete")),
      // Divider(color: Colors.white),

      RaisedButton.icon(
          onPressed: null, icon: Icon(Icons.cancel), label: Text("Cancel"))
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
