import 'package:flutter/material.dart';
import 'package:flutter_projects/responsive_widget.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({Key key}) : super(key: key);

  @override
  _ProfilepageState createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return ResponsiveWidget(
      largeScreen: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(child: Text("Arvind S")),
          elevation: 0.0,
          backgroundColor: Colors.black,
        ),
        drawer: ResponsiveWidget.isSmallScreen(context)
            ? Drawer(
                child: ListView(
                  children: [],
                ),
              )
            : null,
        body: ListView(
          children: [
            Center(
              child: Container(
                child: ClipOval(
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",
                    height: 100,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
