// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:three/controller/home1_contrller.dart';


class MyHomePage1 extends StatelessWidget {
  const MyHomePage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomePage1Controller hc1 = Get.put(HomePage1Controller());
    return Scaffold(
      appBar: AppBar(
        title: Text('Three'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(
              () {
                return Text(
                  hc1.counter.value.toString(),
                );
              }
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: hc1.incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
