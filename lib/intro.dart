import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kittinun/DOG.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          ' ',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                // เมื่อกดรูปภาพจะนำไปยังหน้าจอ PopCatGame
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DogGame(),
                  ),
                );
              },
              child: Image.network(
                'https://pngimg.com/uploads/doge_meme/small/doge_meme_PNG20.png', // ใส่รูปภาพที่ต้องการ
                width: 1000,
                height: 300,
              ),
            ),
            const SizedBox(height: 20), // ระยะห่างระหว่างรูปภาพและข้อความ
            Text(
              'Tap to Start',
              style: GoogleFonts.anton(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
