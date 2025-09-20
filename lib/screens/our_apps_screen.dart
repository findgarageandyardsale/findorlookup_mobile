import 'package:flutter/material.dart';
import '../models/content_item.dart';
import '../services/content_service.dart';
import 'content_detail_screen.dart';

class OurAppsScreen extends StatelessWidget {
  const OurAppsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final contentItems = ContentService.getContentItems();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Our Apps',
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
            colors: [
              Theme.of(context).colorScheme.inversePrimary.withOpacity(0.1),
              Colors.white,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header Section
                const Text(
                  'Our Apps',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Discover our collection of innovative applications',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),

                const SizedBox(height: 32),

                // Apps Grid
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: contentItems.length,
                  itemBuilder: (context, index) {
                    final item = contentItems[index];
                    final isEven = index % 2 == 0;
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: AppCard(
                        contentItem: item,
                        isEven: isEven,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ContentDetailScreen(contentItem: item),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AppCard extends StatelessWidget {
  final ContentItem contentItem;
  final bool isEven;
  final VoidCallback onTap;

  const AppCard({
    super.key,
    required this.contentItem,
    required this.isEven,
    required this.onTap,
  });

  Widget _buildAppImage(String imageUrl) {
    if (imageUrl.startsWith('assets/')) {
      // Local asset image
      return Image.asset(
        imageUrl,
        width: 80,
        height: 80,
        fit: BoxFit.contain,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(Icons.apps, color: Colors.grey, size: 40),
          );
        },
      );
    } else {
      // Network image
      return Image.network(
        imageUrl,
        width: 80,
        height: 80,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(Icons.apps, color: Colors.grey, size: 40),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final cardColor = isEven
        ? Colors.red.withOpacity(0.05)
        : Colors.blue.withOpacity(0.05);
    final accentColor = isEven ? Colors.red : Colors.blue;

    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              // App Icon/Image
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: _buildAppImage(contentItem.imageUrl),
              ),

              const SizedBox(width: 16),

              // App Details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // App Title
                    Text(
                      contentItem.title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: accentColor,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),

                    const SizedBox(height: 4),

                    // App Subtitle
                    Text(
                      contentItem.subtitle,
                      style: const TextStyle(fontSize: 14, color: Colors.grey),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),

                    const SizedBox(height: 8),

                    // Action Row
                    Row(
                      children: [
                        Icon(
                          Icons.play_circle_outline,
                          size: 16,
                          color: accentColor,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'Watch Demo',
                          style: TextStyle(
                            fontSize: 12,
                            color: accentColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Colors.grey[400],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
