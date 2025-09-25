import 'package:flutter/material.dart';
import '../screens/our_apps_screen.dart';
import '../screens/why_choose_us_screen.dart';
import '../screens/customer_reviews_screen.dart';
import '../screens/privacy_policy_screen.dart';
import '../screens/tutorials_screen.dart';
import '../screens/tips_screen.dart';
import '../screens/faq_screen.dart';
import '../screens/news_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.red.withOpacity(0.1), Colors.white],
          ),
        ),
        child: Column(
          children: [
            // Header
            Container(
              padding: const EdgeInsets.fromLTRB(20, 60, 20, 20),
              child: Column(
                children: [
                  // App Logo
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/logo.jpeg',
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(
                            Icons.apps,
                            color: Colors.red,
                            size: 40,
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Find or Lookup',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Discover what\'s around you',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ),

            // Menu Items
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 20),
                children: [
                  _buildDrawerItem(
                    context,
                    icon: Icons.apps,
                    title: 'Our Apps',
                    subtitle: 'Explore our applications',
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OurAppsScreen(),
                        ),
                      );
                    },
                  ),

                  _buildDrawerItem(
                    context,
                    icon: Icons.school,
                    title: 'Tutorials & Guides',
                    subtitle: 'Learn how to use our apps',
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TutorialsScreen(),
                        ),
                      );
                    },
                  ),

                  _buildDrawerItem(
                    context,
                    icon: Icons.lightbulb_outline,
                    title: 'Tips & Best Practices',
                    subtitle: 'Expert advice and tips',
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TipsScreen(),
                        ),
                      );
                    },
                  ),

                  _buildDrawerItem(
                    context,
                    icon: Icons.help_outline,
                    title: 'FAQ',
                    subtitle: 'Frequently asked questions',
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FAQScreen(),
                        ),
                      );
                    },
                  ),

                  _buildDrawerItem(
                    context,
                    icon: Icons.newspaper,
                    title: 'News & Updates',
                    subtitle: 'Latest news and updates',
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NewsScreen(),
                        ),
                      );
                    },
                  ),

                  _buildDrawerItem(
                    context,
                    icon: Icons.star,
                    title: 'Why Choose Us',
                    subtitle: 'What makes us special',
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WhyChooseUsScreen(),
                        ),
                      );
                    },
                  ),

                  _buildDrawerItem(
                    context,
                    icon: Icons.people,
                    title: 'What Our Customers Say',
                    subtitle: 'Reviews and testimonials',
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CustomerReviewsScreen(),
                        ),
                      );
                    },
                  ),

                  _buildDrawerItem(
                    context,
                    icon: Icons.privacy_tip,
                    title: 'Privacy Policy',
                    subtitle: 'How we protect your data',
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PrivacyPolicyScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),

            // Footer
            Container(
              padding: const EdgeInsets.all(20),
              child: const Text(
                'Version 1.0.0',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.red.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: Colors.red, size: 24),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: Colors.grey,
        ),
        onTap: onTap,
      ),
    );
  }
}
