import 'package:Practice10_Estay/detailPage.dart';
import 'package:Practice10_Estay/model.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class mainScreen extends StatelessWidget {
  final List<Bus> bus;
  const mainScreen({Key key, this.bus}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return itemCard(
            context,
            bus[index].url,
            bus[index].name,
            bus[index].info,
            bus[index].type,
            bus[index].time,
            bus[index].stationName);
      },
      itemCount: this.bus.length,
    );
  }
}
// DetaiPage(url, title, info)

itemCard(BuildContext context, String url, String title, String info,
    String type, String time, String stationName) {
  return InkWell(
    onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                DetaiPage(url, title, info, type, time, stationName))),
    child: Card(
      elevation: 13,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(13),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 15.0,
              right: 15.0,
            ),
            child: Container(
              height: 150.0,
              width: double.infinity,
              child: Row(
                children: <Widget>[
                  Container(
                    width: 140.0,
                    height: 150.0,
                    child: Image.network(
                      url,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Center(
                        child: Column(
                          children: [
                            Text(
                              title,
                              style: TextStyle(
                                  fontSize: 17.0, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 35.0),
                            Text(
                              info,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  color: Colors.grey,
                                  fontSize: 14.0),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: FlatButton(
                highlightColor: Colors.lightGreenAccent[700],
                child: Text("Delete"),
                onPressed: () => showDialog(context),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.green[700]),
                    borderRadius: BorderRadius.circular(30.0))),
          ),
          Divider(
            color: Colors.blueAccent,
          ),
        ],
      ),
      shadowColor: Colors.greenAccent,
    ),
  );
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
