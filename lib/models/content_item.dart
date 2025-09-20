class ContentItem {
  final String id;
  final String title;
  final String subtitle;
  final String description;
  final String imageUrl;
  final String vimeoVideoId;
  final String appStoreUrl;
  final String playStoreUrl;
  final List<AppWhyChooseUs> whyChooseUs;

  ContentItem({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.imageUrl,
    required this.vimeoVideoId,
    required this.appStoreUrl,
    required this.playStoreUrl,
    required this.whyChooseUs,
  });
}

class AppWhyChooseUs {
  final String icon;
  final String title;
  final String description;

  AppWhyChooseUs({
    required this.icon,
    required this.title,
    required this.description,
  });
}
