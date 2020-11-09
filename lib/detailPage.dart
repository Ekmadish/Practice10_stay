import 'package:flutter/material.dart';

class DetaiPage extends StatelessWidget {
  final String url;
  final String title;
  final String info;
  final String type;
  final String time;
  final String stationName;

  const DetaiPage(
      this.url, this.title, this.info, this.type, this.time, this.stationName);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300,
        child: Scaffold(
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
                            style:
                                TextStyle(color: Colors.white, fontSize: 24)),
                        Divider(
                          color: Colors.green,
                        ),
                        Text("Time",
                            style:
                                TextStyle(color: Colors.white, fontSize: 24)),
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
                        onPressed: () {},
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
                        onPressed: () {},
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
        ));
  }
}
