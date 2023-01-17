import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:lottuie_splash/new_screen.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Lottie.network(
              'https://assets9.lottiefiles.com/packages/lf20_fFVfCt.json',
            ),
            const SizedBox(
              height: 70,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(NewPage());
              },
              child: const Text('New Page'),
            ),
            const SizedBox(
              height: 70,
            ),
            ElevatedButton(
              onPressed: () {
                Get.snackbar('notifcation', 'hello',
                    icon: Icon(Icons.message),
                    snackPosition: SnackPosition.BOTTOM);
              },
              child: const Text('New Page'),
            ),
          ],
        ),
      ),
    );
  }
}
