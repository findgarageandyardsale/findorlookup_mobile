import 'package:flutter/material.dart';
import '../models/tutorial_item.dart';
import '../services/educational_service.dart';

class FAQScreen extends StatefulWidget {
  const FAQScreen({super.key});

  @override
  State<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  String selectedCategory = 'All';
  List<String> categories = [
    'All',
    'General',
    'Safety',
    'Garage Sales',
    'Real Estate',
    'Food & Dining',
    'Automotive',
  ];

  @override
  Widget build(BuildContext context) {
    final faqs = EducationalService.getFAQs();
    final filteredFAQs = selectedCategory == 'All'
        ? faqs
        : faqs.where((f) => f.category == selectedCategory).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Frequently Asked Questions',
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
      body: Column(
        children: [
          // Search Bar
          Container(
            padding: const EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search FAQs...',
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.grey[300]!),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.red),
                ),
                filled: true,
                fillColor: Colors.grey[50],
              ),
              onChanged: (value) {
                // Implement search functionality
              },
            ),
          ),

          // Category Filter
          Container(
            height: 60,
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];
                final isSelected = category == selectedCategory;
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: FilterChip(
                    label: Text(category),
                    selected: isSelected,
                    onSelected: (selected) {
                      setState(() {
                        selectedCategory = category;
                      });
                    },
                    selectedColor: Colors.red.withOpacity(0.2),
                    checkmarkColor: Colors.red,
                    labelStyle: TextStyle(
                      color: isSelected ? Colors.red : Colors.grey[600],
                      fontWeight: isSelected
                          ? FontWeight.w600
                          : FontWeight.normal,
                    ),
                  ),
                );
              },
            ),
          ),

          // FAQ List
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: filteredFAQs.length,
              itemBuilder: (context, index) {
                final faq = filteredFAQs[index];
                return FAQCard(faq: faq);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class FAQCard extends StatefulWidget {
  final FAQItem faq;

  const FAQCard({super.key, required this.faq});

  @override
  State<FAQCard> createState() => _FAQCardState();
}

class _FAQCardState extends State<FAQCard> {
  bool isExpanded = false;

  Color _getCategoryColor(String category) {
    switch (category) {
      case 'General':
        return Colors.blue;
      case 'Safety':
        return Colors.red;
      case 'Garage Sales':
        return Colors.orange;
      case 'Real Estate':
        return Colors.green;
      case 'Food & Dining':
        return Colors.purple;
      case 'Automotive':
        return Colors.teal;
      default:
        return Colors.grey;
    }
  }

  IconData _getCategoryIcon(String category) {
    switch (category) {
      case 'General':
        return Icons.help_outline;
      case 'Safety':
        return Icons.security;
      case 'Garage Sales':
        return Icons.home_work;
      case 'Real Estate':
        return Icons.home;
      case 'Food & Dining':
        return Icons.restaurant;
      case 'Automotive':
        return Icons.directions_car;
      default:
        return Icons.help_outline;
    }
  }

  @override
  Widget build(BuildContext context) {
    final categoryColor = _getCategoryColor(widget.faq.category);

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            borderRadius: BorderRadius.circular(12),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: categoryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      _getCategoryIcon(widget.faq.category),
                      color: categoryColor,
                      size: 20,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.faq.question,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: categoryColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            widget.faq.category,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: categoryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    isExpanded ? Icons.expand_less : Icons.expand_more,
                    color: Colors.grey[600],
                  ),
                ],
              ),
            ),
          ),
          if (isExpanded)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 1,
                    color: Colors.grey[200],
                    margin: const EdgeInsets.only(bottom: 12),
                  ),
                  Text(
                    widget.faq.answer,
                    style: const TextStyle(
                      fontSize: 15,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      TextButton.icon(
                        onPressed: () {
                          // Copy answer to clipboard
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Answer copied to clipboard!'),
                              backgroundColor: Colors.green,
                            ),
                          );
                        },
                        icon: const Icon(Icons.copy, size: 16),
                        label: const Text('Copy'),
                        style: TextButton.styleFrom(
                          foregroundColor: categoryColor,
                        ),
                      ),
                      const SizedBox(width: 8),
                      TextButton.icon(
                        onPressed: () {
                          // Share FAQ
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('FAQ shared!'),
                              backgroundColor: Colors.blue,
                            ),
                          );
                        },
                        icon: const Icon(Icons.share, size: 16),
                        label: const Text('Share'),
                        style: TextButton.styleFrom(
                          foregroundColor: categoryColor,
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {
                          // Rate helpfulness
                          _showRatingDialog(context, widget.faq);
                        },
                        child: Text(
                          'Was this helpful?',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
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
    );
  }

  void _showRatingDialog(BuildContext context, FAQItem faq) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Rate This Answer'),
        content: const Text('Was this FAQ helpful?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Thanks for your feedback!'),
                  backgroundColor: Colors.green,
                ),
              );
            },
            child: const Text('Yes'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('We\'ll work to improve this answer.'),
                  backgroundColor: Colors.orange,
                ),
              );
            },
            child: const Text('No'),
          ),
        ],
      ),
    );
  }
}
