import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            print('MenueButton Was Clicked ! ');
          },
          icon: Icon(Icons.menu),
        ),
        title: Text(
          'First Application',
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                print('Search Button Was Clicked !');
              },
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                print('Notification Button Was Clicked !');
              },
              icon: Icon(Icons.notification_important)),
        ],
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image(
                      image: NetworkImage(
                          'https://d3exkutavo4sli.cloudfront.net/wp-content/uploads/2019/06/how-not-to-kill-your-houseplant-light.jpg'),
                      width: 200.0,
                      height: 200.0),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    color: Colors.black.withOpacity(0.6),
                    width: 200.0,
                    child: Text(
                      'Beautiful !',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
