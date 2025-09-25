class TutorialItem {
  final String id;
  final String title;
  final String description;
  final String content;
  final String category;
  final List<String> steps;
  final List<String> tips;
  final String difficulty; // 'Beginner', 'Intermediate', 'Advanced'
  final int estimatedTime; // in minutes
  final String appId; // Which app this tutorial is for
  final bool isCompleted;

  TutorialItem({
    required this.id,
    required this.title,
    required this.description,
    required this.content,
    required this.category,
    required this.steps,
    required this.tips,
    required this.difficulty,
    required this.estimatedTime,
    required this.appId,
    this.isCompleted = false,
  });
}

class TipItem {
  final String id;
  final String title;
  final String description;
  final String category;
  final String icon;

  TipItem({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.icon,
  });
}

class FAQItem {
  final String id;
  final String question;
  final String answer;
  final String category;
  final bool isExpanded;

  FAQItem({
    required this.id,
    required this.question,
    required this.answer,
    required this.category,
    this.isExpanded = false,
  });
}

class NewsItem {
  final String id;
  final String title;
  final String content;
  final String category;
  final DateTime publishDate;
  final String imageUrl;
  final bool isRead;

  NewsItem({
    required this.id,
    required this.title,
    required this.content,
    required this.category,
    required this.publishDate,
    required this.imageUrl,
    this.isRead = false,
  });
}
