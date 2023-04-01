import 'dart:convert';
import 'dart:ui';
import 'package:flutter/services.dart' as rootBundle;

import 'package:cafe_app/model/datamodel.dart';
import 'package:cafe_app/pages/detailscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/services.dart';
import "package:cafe_app/service/webservice.dart";

class Gallery extends StatelessWidget {
  const Gallery({super.key});
  Future<List<Datamodel>> ReadJSonData() async {
    final jsondata = await rootBundle.rootBundle.loadString('dummy.json');
    final list = json.decode(jsondata) as List<dynamic>;
    return list.map((e) => Datamodel.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
            future: ReadJSonData(),
            builder: (context, data) {
              if (data.hasError) {
                return Text("${data.error}");
              } else if (data.hasData) {
                var items = data.data as List<Datamodel>;
                return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: 300,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                          color: Colors.amber,
                          child: Center(
                              child: Image(
                            image:
                                NetworkImage(items[index].image_url.toString()),
                          )));
                    });
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }));
  }
}
