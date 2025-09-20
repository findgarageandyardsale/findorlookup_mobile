import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../models/content_item.dart';
import '../widgets/video_player_widget.dart';
import '../widgets/app_detail_why_choose_us.dart';

class ContentDetailScreen extends StatefulWidget {
  final ContentItem contentItem;

  const ContentDetailScreen({super.key, required this.contentItem});

  @override
  State<ContentDetailScreen> createState() => _ContentDetailScreenState();
}

class _ContentDetailScreenState extends State<ContentDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.contentItem.title,
          style: const TextStyle(
            fontSize: 18,
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8),
            // App Image Section
            SizedBox(
              width: double.infinity,
              height: 250,
              child: _buildAppImage(),
            ),

            // Content Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.contentItem.title,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.contentItem.subtitle,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Video Section
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[100],
                    ),
                    child: VideoPlayerWidget(
                      vimeoVideoId: widget.contentItem.vimeoVideoId,
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Description Section
                  const Text(
                    'About This App',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    widget.contentItem.description,
                    style: const TextStyle(
                      fontSize: 16,
                      height: 1.6,
                      color: Colors.black87,
                    ),
                  ),

                  const SizedBox(height: 32),

                  // Download Buttons - Platform specific
                  const Text(
                    'Download Now',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(height: 16),

                  _buildPlatformSpecificDownloadButton(),

                  const SizedBox(height: 32),

                  // Why Choose Us Section
                  AppDetailWhyChooseUs(
                    whyChooseUs: widget.contentItem.whyChooseUs,
                  ),

                  const SizedBox(height: 32),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAppImage() {
    if (widget.contentItem.imageUrl.startsWith('assets/')) {
      // Local asset image
      return Image.asset(
        widget.contentItem.imageUrl,
        fit: BoxFit.contain,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            color: Colors.grey[300],
            child: const Icon(Icons.image, color: Colors.grey, size: 80),
          );
        },
      );
    } else {
      // Network image
      return Image.network(
        widget.contentItem.imageUrl,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            color: Colors.grey[300],
            child: const Icon(Icons.image, color: Colors.grey, size: 80),
          );
        },
      );
    }
  }

  Widget _buildPlatformSpecificDownloadButton() {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      // Show App Store button for iOS
      return SizedBox(
        width: double.infinity,
        child: ElevatedButton.icon(
          onPressed: () => _launchUrl(widget.contentItem.appStoreUrl),
          icon: const FaIcon(
            FontAwesomeIcons.appStore,
            color: Colors.white,
            size: 24,
          ),
          label: const Text(
            'Download on App Store',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 2,
          ),
        ),
      );
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      // Show Play Store button for Android
      return SizedBox(
        width: double.infinity,
        child: ElevatedButton.icon(
          onPressed: () => _launchUrl(widget.contentItem.playStoreUrl),
          icon: const FaIcon(
            FontAwesomeIcons.googlePlay,
            color: Colors.white,
            size: 24,
          ),
          label: const Text(
            'Get it on Google Play',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 2,
          ),
        ),
      );
    } else {
      // Show both buttons for other platforms (web, desktop, etc.)
      return Row(
        children: [
          Expanded(
            child: ElevatedButton.icon(
              onPressed: () => _launchUrl(widget.contentItem.appStoreUrl),
              icon: const FaIcon(
                FontAwesomeIcons.appStore,
                color: Colors.white,
                size: 20,
              ),
              label: const Text('App Store'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: ElevatedButton.icon(
              onPressed: () => _launchUrl(widget.contentItem.playStoreUrl),
              icon: const FaIcon(
                FontAwesomeIcons.googlePlay,
                color: Colors.white,
                size: 20,
              ),
              label: const Text('Play Store'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
        ],
      );
    }
  }

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Could not launch the URL'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }
}
