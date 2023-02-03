import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final myController = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan GetX'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                '${myController.data.value}',
                style: TextStyle(fontSize: 40),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      myController.increment();
                    },
                    child: Text('+')),
                ElevatedButton(
                    onPressed: () {
                      myController.decrement();
                    },
                    child: Text('-')),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Controller extends GetxController {
  var data = 0.obs;
  increment() => data + 1;
  decrement() => data - 1;
}
