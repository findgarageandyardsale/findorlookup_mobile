import 'package:flutter/material.dart';

class WhyChooseUsScreen extends StatefulWidget {
  const WhyChooseUsScreen({super.key});

  @override
  State<WhyChooseUsScreen> createState() => _WhyChooseUsScreenState();
}

class _WhyChooseUsScreenState extends State<WhyChooseUsScreen>
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
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Why Choose Us',
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
                  _buildTitle(),
                  const SizedBox(height: 20),
                  _buildFeatureCards(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return const Text(
      'Why Choose Us',
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Colors.red,
      ),
    );
  }

  Widget _buildFeatureCards() {
    final features = [
      {
        'icon': Icons.cleaning_services,
        'title': 'No more messy signs',
        'description': 'Go digital, stay visible, keep it clean.',
        'color': Colors.red,
      },
      {
        'icon': Icons.location_on,
        'title': 'Real-time discovery',
        'description': 'Find what\'s happening right now in your area',
        'color': Colors.blue,
      },
      {
        'icon': Icons.my_location,
        'title': 'Location-based listings',
        'description': 'Only see what\'s relevant to your neighborhood',
        'color': Colors.green,
      },
      {
        'icon': Icons.add_circle_outline,
        'title': 'Easy to post, free to browse',
        'description': 'Post in minutes, explore in seconds.',
        'color': Colors.orange,
      },
    ];

    return Column(
      children: features.asMap().entries.map((entry) {
        final index = entry.key;
        final feature = entry.value;

        return TweenAnimationBuilder<double>(
          duration: Duration(milliseconds: 600 + (index * 200)),
          tween: Tween(begin: 0.0, end: 1.0),
          builder: (context, value, child) {
            return Transform.translate(
              offset: Offset(0, 30 * (1 - value)),
              child: Opacity(
                opacity: value,
                child: _buildFeatureCard(
                  icon: feature['icon'] as IconData,
                  title: feature['title'] as String,
                  description: feature['description'] as String,
                  color: feature['color'] as Color,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }

  Widget _buildFeatureCard({
    required IconData icon,
    required String title,
    required String description,
    required Color color,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
        border: Border.all(color: color.withOpacity(0.1), width: 1),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: color, size: 28),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                    height: 1.4,
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
