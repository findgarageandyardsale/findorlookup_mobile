import 'package:flutter/material.dart';

class CustomerReviewsScreen extends StatefulWidget {
  const CustomerReviewsScreen({super.key});

  @override
  State<CustomerReviewsScreen> createState() => _CustomerReviewsScreenState();
}

class _CustomerReviewsScreenState extends State<CustomerReviewsScreen>
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

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.3),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOutCubic),
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
          'Customer Reviews',
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
                  _buildReviewsList(),
                ],
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
          'What Our Customers Say',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Real reviews from real users',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[600],
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildReviewsList() {
    final reviews = _getReviewsData();

    return Column(
      children:
          reviews.asMap().entries.map((entry) {
            final index = entry.key;
            final review = entry.value;

            return TweenAnimationBuilder<double>(
              duration: Duration(milliseconds: 600 + (index * 150)),
              tween: Tween(begin: 0.0, end: 1.0),
              builder: (context, value, child) {
                return Transform.translate(
                  offset: Offset(0, 30 * (1 - value)),
                  child: Opacity(
                    opacity: value,
                    child: _buildReviewCard(review),
                  ),
                );
              },
            );
          }).toList(),
    );
  }

  Widget _buildReviewCard(Map<String, dynamic> review) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(20),
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
        border: Border.all(
          color: review['appColor'].withOpacity(0.1),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: review['appColor'].withOpacity(0.1),
                child: Text(
                  review['userName'][0].toUpperCase(),
                  style: TextStyle(
                    color: review['appColor'],
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      review['userName'],
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        ...List.generate(5, (index) {
                          return Icon(
                            index < review['rating']
                                ? Icons.star
                                : Icons.star_border,
                            color: Colors.amber,
                            size: 16,
                          );
                        }),
                        const SizedBox(width: 8),
                        Flexible(
                          child: Text(
                            review['appName'],
                            style: TextStyle(
                              fontSize: 12,
                              color: review['appColor'],
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Text(
            review['review'],
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[700],
              height: 1.5,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            review['date'],
            style: TextStyle(fontSize: 12, color: Colors.grey[500]),
          ),
        ],
      ),
    );
  }

  List<Map<String, dynamic>> _getReviewsData() {
    return [
      // Find Garage and Yard Sale Reviews
      {
        'appName': 'Find Garage and Yard Sale',
        'appColor': Colors.blue,
        'userName': 'Sarah Johnson',
        'rating': 5,
        'review':
            'This app is a game changer! I found amazing deals in my neighborhood and sold my old furniture in just 2 days. The interface is so easy to use and the local focus makes everything so convenient.',
        'date': '2 days ago',
      },
      {
        'appName': 'Find Garage and Yard Sale',
        'appColor': Colors.blue,
        'userName': 'Mike Chen',
        'rating': 5,
        'review':
            'Finally, no more driving around looking for yard sales! The app shows me exactly what\'s available nearby. I\'ve found some incredible vintage items and the sellers are always friendly.',
        'date': '1 week ago',
      },

      // Find Open House Reviews
      {
        'appName': 'Find Open House',
        'appColor': Colors.green,
        'userName': 'Emily Rodriguez',
        'rating': 5,
        'review':
            'As a first-time home buyer, this app was invaluable. I could see all the open houses in my area without driving around aimlessly. The property details and photos were super helpful!',
        'date': '3 days ago',
      },
      {
        'appName': 'Find Open House',
        'appColor': Colors.green,
        'userName': 'David Thompson',
        'rating': 4,
        'review':
            'Great tool for real estate agents too! I can easily list my open houses and track interest. The location-based search saves so much time for both buyers and sellers.',
        'date': '5 days ago',
      },

      // Find Street Food Reviews
      {
        'appName': 'Find Street Food',
        'appColor': Colors.orange,
        'userName': 'Lisa Park',
        'rating': 5,
        'review':
            'I\'m a food truck enthusiast and this app is perfect! I discovered so many amazing local vendors I never knew existed. The real-time updates help me catch my favorite trucks.',
        'date': '1 day ago',
      },
      {
        'appName': 'Find Street Food',
        'appColor': Colors.orange,
        'userName': 'James Wilson',
        'rating': 5,
        'review':
            'This app has revolutionized my lunch breaks! I can find the best street food near my office and support local vendors. The reviews and photos help me choose what to try.',
        'date': '4 days ago',
      },

      // Find Car Sale Reviews
      {
        'appName': 'Find Car Sale',
        'appColor': Colors.purple,
        'userName': 'Alex Martinez',
        'rating': 5,
        'review':
            'Bought my dream car through this app! The local listings made it easy to test drive and negotiate. Much better than dealing with dealerships. Highly recommend!',
        'date': '1 week ago',
      },
      {
        'appName': 'Find Car Sale',
        'appColor': Colors.purple,
        'userName': 'Rachel Kim',
        'rating': 4,
        'review':
            'Sold my old car in just 3 days using this app. The local focus means serious buyers who can actually come see the car. The process was smooth and secure.',
        'date': '6 days ago',
      },
    ];
  }
}
