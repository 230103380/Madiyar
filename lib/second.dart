import 'package:flutter/material.dart';
import 'package:dada/jobcard.dart';

class JobList extends StatelessWidget {
  const JobList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffB7DACD),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffB7DACD),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/images/Avatar.png'),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Image.asset(
              'assets/images/notification.png',
              width: 24,
              height: 24,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              const Text(
                "DESIGNER",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff434545),
                ),
              ),
              const SizedBox(height: 12),

              jobCard(context, "Junior UX Designer", "Canva"),
              const SizedBox(height: 16),
              jobCard(context, "Junior Product Designer", "Canva"),
              const SizedBox(height: 16),
              jobCard(context, "Middle Motion Designer", "Canva"),
              const SizedBox(height: 24),

              // 🔹 Раздел ANDROID
              const Text(
                "ANDROID",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff434545),
                ),
              ),
              const SizedBox(height: 12),

              jobCard(context, "Junior Android Developer", "Kotlin,Java"),
              const SizedBox(height: 16),
              jobCard(context, "Middle Android Engineer", "Kotlin,Java"),
              const SizedBox(height: 16),
              jobCard(context, "Junior UX Designer", "Canva"),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
