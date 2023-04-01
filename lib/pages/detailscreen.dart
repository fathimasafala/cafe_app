import 'package:cafe_app/pages/gallery.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Detailscreen extends StatelessWidget {
  const Detailscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "nameofimage",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: (() => Gallery()),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 500,
            child: Image.network(
              'https://picsum.photos/250?image=9',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "gcfghbnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn",
                style: TextStyle(fontSize: 16),
              ),
            ),
          )
        ],
      ),
    );
  }
}
