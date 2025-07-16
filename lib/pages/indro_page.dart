import 'package:flutter/material.dart';
import 'package:shop/pages/home_page.dart';

class introPage extends StatelessWidget {
  const introPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 240),
              child: Image.asset(
                'lib/nike/[CITYPNG.COM]HD White Nike Logo Transparent PNG - 2000x2000.png',
                height: 240,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              "Just do it",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 30),
            Text(
              "you can do it if you try ",
              style: TextStyle(color: Colors.grey[200], fontSize: 16),
            ),
            const SizedBox(height: 70),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Home()),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text("Shop Now"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
