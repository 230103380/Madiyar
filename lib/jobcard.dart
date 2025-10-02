import 'package:flutter/material.dart';
import 'package:dada/third.dart';

Widget jobCard(BuildContext context, String title, String company) {
  return InkWell(
    borderRadius: BorderRadius.circular(16),
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const JobInfo()),
      );
    },
    child: Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 5,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Transform.translate(
            offset: const Offset(-5, -10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 19,
                  backgroundImage: AssetImage('assets/images/canva.png'),
                  backgroundColor: Colors.blueAccent,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        company,
                        style: TextStyle(fontSize: 14, color: Colors.grey[900]),
                      ),
                    ],
                  ),
                ),
                Image(
                  image: AssetImage('assets/images/Expires Soon.png'),

                  height: 60,
                  width: 60,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xffD4F0E6),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Text(
                  'Paystack',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              const Text(
                '\$40-60k/yearly',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
