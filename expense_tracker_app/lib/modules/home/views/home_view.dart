import 'package:flutter/material.dart';

import '../../../utility/constants/colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset('assets/images/profile_picture.jpg', width: 40, height: 40, fit: BoxFit.cover),
            ),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome!", style: Theme.of(context).textTheme.labelMedium),
                Text(
                  "Hello, User",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            // height: MediaQuery.of(context).size.height * 0.25,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: const LinearGradient(
                colors: [AppColors.primaryColor, AppColors.secondaryColor, AppColors.tertiaryColor],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Your Balance", style: Theme.of(context).textTheme.labelMedium!.copyWith(color: Colors.white)),
                const SizedBox(height: 8),
                Text(
                  "\$1,234.56",
                  style: Theme.of(
                    context,
                  ).textTheme.displaySmall!.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: AppColors.circleColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(Icons.arrow_upward, color: AppColors.lightGreen),
                        ),
                        const SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Income",
                              style: Theme.of(context).textTheme.labelMedium!.copyWith(color: AppColors.white),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "\$500.00",
                              style: Theme.of(
                                context,
                              ).textTheme.bodyLarge!.copyWith(color: AppColors.white, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: AppColors.circleColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(Icons.arrow_downward, color: Colors.redAccent),
                        ),
                        const SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Expenses",
                              style: Theme.of(context).textTheme.labelMedium!.copyWith(color: AppColors.white),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "\$300.00",
                              style: Theme.of(
                                context,
                              ).textTheme.bodyLarge!.copyWith(color: AppColors.white, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
