import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({super.key});

  // Generate random image URL
  String randomImage() {
    final id = Random().nextInt(500);
    return "https://picsum.photos/id/$id/300/300";
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Expanded(
      child: ListView(
        children: [
          Container(
            height: screenHeight * 0.8,
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              horizontal: screenWidth > 500 ? 45 : 10,
              vertical: 15,
            ),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.deepOrange.shade100,
            ),

            // ⭐ Replaced Center → Added GridView
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                Expanded(
                  child: GridView.builder(
                    itemCount: 6, // You can increase
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: screenWidth > 600 ? 4 : 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,

                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            // 🔥 Random Image
                            Expanded(
                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                ),
                                child: Image.network(
                                  randomImage(),
                                  height: 110,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            const SizedBox(height: 8),

                            Text(
                              "Project ${index + 1}",
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),

                            const SizedBox(height: 5),

                            const Text(
                              "View on Play Store",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            const SizedBox(height: 8),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
