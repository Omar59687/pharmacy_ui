import 'package:flutter/material.dart';
import 'package:pharmacy_ui/constants.dart';
import 'package:pharmacy_ui/widgets/custom_circle_avatar.dart';
import 'package:pharmacy_ui/widgets/custom_home_page_items.dart';

class HomePageBody extends StatefulWidget {
  HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

int selectedCategoryIndex = 0;

class _HomePageBodyState extends State<HomePageBody> {
  final List<String> categories = [
    'All medicines',
    'Supplement',
    'Vitamins',
    'Herbal',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SafeArea(
          child: Row(
            children: [
              CustomCircleAvatar(icon: Icons.person),

              const Spacer(flex: 1),

              CustomCircleAvatar(icon: Icons.notifications),
              // ...add other widgets here...
            ],
          ),
        ),

        const SizedBox(height: 20),

        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Your Trusted',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
            ),
          ),
        ),
        const SizedBox(height: 8),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Online pharmacy',
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'Poppins',
              color: Color.fromARGB(255, 134, 134, 134),
            ),
          ),
        ),

        const SizedBox(height: 20),

        // ...existing code...
        Container(
          height: 55,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Container(
                    height: 55,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Color.alphaBlend(
                          Colors.white.withOpacity(0.3), primaryColor),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 20),
                        Text(
                          'Search medicine',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 134, 134, 134),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        const Spacer(flex: 1),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            height: 55,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.qr_code_scanner,
                                    color: Colors.white),
                                SizedBox(width: 8),
                                Text(
                                  'Scan',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 36),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(categories.length, (index) {
              final isSelected = selectedCategoryIndex == index;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedCategoryIndex = index;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        categories[index],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: isSelected
                              ? Colors.black
                              : const Color.fromARGB(255, 134, 134, 134),
                        ),
                      ),
                      const SizedBox(height: 8), // Add space before the line
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        height: 3,
                        width: isSelected
                            ? (TextPainter(
                                text: TextSpan(
                                  text: categories[index],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                maxLines: 1,
                                textDirection: TextDirection.ltr,
                              )..layout())
                                .size
                                .width
                            : 0,
                        decoration: BoxDecoration(
                          color: isSelected ? Colors.black : Colors.transparent,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),

        const SizedBox(height: 20),

        CustomHomePageItems(),
      ],
    );
  }
}
