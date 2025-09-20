import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );

    _slideAnimation =
        Tween<Offset>(begin: const Offset(0, 0.3), end: Offset.zero).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Curves.easeOutCubic,
          ),
        );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Privacy Policy',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.red,
          centerTitle: true,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.red.withOpacity(0.05), Colors.white],
            ),
          ),
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: SlideTransition(
              position: _slideAnimation,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    _buildHeader(),
                    const SizedBox(height: 30),
                    _buildPrivacyPolicyContent(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Privacy Policy',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Last updated: ${_getCurrentDate()}',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildPrivacyPolicyContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSection(
          '1. Introduction',
          'Find or Lookup Mobile ("we," "our," or "us") operates the mobile applications Find Garage and Yard Sale, Find Open House, Find Street Food, and Find Car Sale (collectively, the "Apps"). This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you use our Apps.',
        ),
        _buildSection(
          '2. Information We Collect',
          'We collect information you provide directly to us, such as when you create an account, post listings, or contact us for support. This may include:\n\n• Personal information (name, email address, phone number)\n• Location data (to show relevant local listings)\n• Content you post (listings, photos, descriptions)\n• Communication data (messages between users)\n• Device information (device type, operating system, unique device identifiers)\n• Usage data (how you interact with our Apps)',
        ),
        _buildSection(
          '3. How We Use Your Information',
          'We use the information we collect to:\n\n• Provide, maintain, and improve our Apps\n• Process transactions and facilitate communications between users\n• Send you technical notices, updates, and support messages\n• Respond to your comments and questions\n• Monitor and analyze usage and trends\n• Personalize your experience\n• Ensure safety and prevent fraud',
        ),
        _buildSection(
          '4. Location Services',
          'Our Apps use location services to show you relevant local listings. You can control location permissions through your device settings. Location data is used to:\n\n• Display nearby garage sales, open houses, food trucks, and car listings\n• Help other users find your listings\n• Improve our location-based features\n\nWe do not track your precise location when the Apps are not in use.',
        ),
        _buildSection(
          '5. Information Sharing',
          'We may share your information in the following circumstances:\n\n• With other users (as necessary for the Apps\' functionality)\n• With service providers who assist us in operating our Apps\n• When required by law or to protect our rights\n• In connection with a business transfer or merger\n• With your consent\n\nWe do not sell your personal information to third parties.',
        ),
        _buildSection(
          '6. Data Security',
          'We implement appropriate technical and organizational measures to protect your personal information against unauthorized access, alteration, disclosure, or destruction. However, no method of transmission over the internet or electronic storage is 100% secure.',
        ),
        _buildSection(
          '7. Your Rights',
          'Depending on your location, you may have certain rights regarding your personal information:\n\n• Access to your personal information\n• Correction of inaccurate information\n• Deletion of your information\n• Portability of your data\n• Objection to certain processing\n• Withdrawal of consent\n\nTo exercise these rights, please contact us using the information provided below.',
        ),
        _buildSection(
          '8. Children\'s Privacy',
          'Our Apps are not intended for children under 13 years of age. We do not knowingly collect personal information from children under 13. If you are a parent or guardian and believe your child has provided us with personal information, please contact us.',
        ),
        _buildSection(
          '9. Third-Party Services',
          'Our Apps may contain links to third-party websites or services. We are not responsible for the privacy practices of these third parties. We encourage you to read their privacy policies before providing any information.',
        ),
        _buildSection(
          '10. Changes to This Policy',
          'We may update this Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy in our Apps and updating the "Last updated" date. Your continued use of our Apps after any modifications constitutes acceptance of the updated Privacy Policy.',
        ),
        _buildSection(
          '11. Contact Us',
          'If you have any questions about this Privacy Policy or our privacy practices, please contact us at:\n\nEmail: privacy@findorlookup.com\nAddress: Find or Lookup App, Inc.\n Arleta Street \nArleta, CA 91331\nUnited States\n\nPhone: +1 (555) 123-4567',
        ),
        const SizedBox(height: 40),
        _buildFooter(),
      ],
    );
  }

  Widget _buildSection(String title, String content) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            content,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[700],
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.red.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.red.withOpacity(0.2), width: 1),
      ),
      child: Column(
        children: [
          Icon(Icons.security, color: Colors.red, size: 32),
          const SizedBox(height: 12),
          const Text(
            'Your Privacy Matters',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'We are committed to protecting your privacy and ensuring the security of your personal information.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[700],
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  String _getCurrentDate() {
    final now = DateTime.now();
    final months = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December',
    ];
    return '${months[now.month - 1]} ${now.day}, ${now.year}';
  }
}
