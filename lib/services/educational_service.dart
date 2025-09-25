import '../models/tutorial_item.dart';

class EducationalService {
  static List<TutorialItem> getTutorials() {
    return [
      TutorialItem(
        id: '1',
        title: 'Getting Started with Garage Sales',
        description:
            'Learn how to find and participate in local garage sales effectively',
        content:
            'This comprehensive guide will teach you everything you need to know about finding and participating in garage sales in your community.',
        category: 'Garage Sales',
        steps: [
          'Download the Find Garage and Yard Sale app from the App Store',
          'Create your account and verify your location',
          'Browse nearby garage sales using the map or list view',
          'Filter results by date, distance, or category of items',
          'Contact sellers through the in-app messaging system',
          'Plan your route to visit multiple sales efficiently',
          'Bring cash and reusable bags for your purchases',
          'Leave reviews to help other community members',
        ],
        tips: [
          'Visit sales early in the morning for the best selection',
          'Bring small bills and change for easier transactions',
          'Ask about bulk discounts for multiple items',
          'Check the weather forecast before planning your route',
          'Bring a measuring tape for furniture purchases',
        ],
        difficulty: 'Beginner',
        estimatedTime: 1,
        appId: '1',
      ),
      TutorialItem(
        id: '2',
        title: 'Hosting Your First Garage Sale',
        description:
            'Step-by-step guide to organizing and hosting a successful garage sale',
        content:
            'Learn how to organize, advertise, and host a profitable garage sale that attracts the right buyers.',
        category: 'Garage Sales',
        steps: [
          'Download the Find Garage and Yard Sale app',
          'Create a seller account and verify your identity',
          'Take clear photos of items you want to sell',
          'Write detailed descriptions including condition and price',
          'Set your sale dates and times',
          'Use the app to advertise your sale locally',
          'Organize items by category and price range',
          'Prepare change and payment methods',
          'Set up signs and displays the day before',
          'Welcome customers and be ready to negotiate',
        ],
        tips: [
          'Price items at 10-30% of original retail value',
          'Group similar items together for easier browsing',
          'Offer bundle deals for multiple items',
          'Have extension cords available for testing electronics',
          'Keep popular items near the front to attract attention',
        ],
        difficulty: 'Intermediate',
        estimatedTime: 1,
        appId: '1',
      ),
      TutorialItem(
        id: '3',
        title: 'Finding Your Dream Home',
        description:
            'How to use Find Open House to discover and visit open houses',
        content:
            'Master the art of house hunting using our open house discovery platform.',
        category: 'Real Estate',
        steps: [
          'Download the Find Open House app',
          'Set your location and search radius preferences',
          'Filter by price range, bedrooms, bathrooms, and property type',
          'Browse available open houses by date and time',
          'Save favorite properties to your wishlist',
          'Get directions to multiple open houses',
          'Contact agents through the secure messaging system',
          'Take notes and photos during your visits',
          'Compare properties using the comparison feature',
          'Schedule private showings for properties you love',
        ],
        tips: [
          'Visit open houses during the first hour for less competition',
          'Bring a checklist of must-haves and deal-breakers',
          'Take photos and notes to remember details later',
          'Ask about neighborhood amenities and future development',
          'Consider visiting the area at different times of day',
        ],
        difficulty: 'Beginner',
        estimatedTime: 1,
        appId: '2',
      ),
      TutorialItem(
        id: '4',
        title: 'Selling Your Home with Open Houses',
        description:
            'Complete guide to listing and promoting your home for sale',
        content:
            'Learn how to effectively market your home using open house listings and attract serious buyers.',
        category: 'Real Estate',
        steps: [
          'Download the Find Open House app',
          'Create a seller account and verify your property',
          'Take professional-quality photos of your home',
          'Write compelling descriptions highlighting key features',
          'Set your asking price based on market research',
          'Schedule open house dates and times',
          'Use the app to promote your listing locally',
          'Prepare your home for showings',
          'Create a welcoming atmosphere for visitors',
          'Follow up with interested buyers through the app',
        ],
        tips: [
          'Declutter and depersonalize your space before photos',
          'Highlight unique features and recent improvements',
          'Price competitively based on recent comparable sales',
          'Be flexible with showing times to accommodate buyers',
          'Consider staging key rooms to help buyers visualize',
        ],
        difficulty: 'Advanced',
        estimatedTime: 1,
        appId: '2',
      ),
      TutorialItem(
        id: '5',
        title: 'Discovering Local Street Food',
        description: 'How to find and enjoy authentic street food in your area',
        content:
            'Explore the vibrant world of street food and support local vendors in your community.',
        category: 'Food & Dining',
        steps: [
          'Download the Find Street Food app',
          'Enable location services for nearby vendor discovery',
          'Browse vendors by cuisine type and location',
          'Read reviews and ratings from other food lovers',
          'Check vendor schedules and availability',
          'Use the map feature to plan your food tour',
          'Order ahead to skip the lines',
          'Leave reviews and photos to help others',
          'Follow your favorite vendors for updates',
          'Share your discoveries with friends',
        ],
        tips: [
          'Try new cuisines you haven\'t experienced before',
          'Visit during off-peak hours for shorter wait times',
          'Bring cash as backup payment method',
          'Ask vendors about their specialties and recommendations',
          'Take photos to remember your favorite dishes',
        ],
        difficulty: 'Beginner',
        estimatedTime: 1,
        appId: '3',
      ),
      TutorialItem(
        id: '6',
        title: 'Buying a Car Locally',
        description:
            'Complete guide to finding and purchasing cars in your neighborhood',
        content:
            'Learn how to safely and effectively buy a car from local sellers using our platform.',
        category: 'Automotive',
        steps: [
          'Download the Find Car Sale app',
          'Set your budget and vehicle preferences',
          'Browse local car listings with detailed information',
          'Use filters to narrow down your search',
          'Contact sellers through the secure messaging system',
          'Schedule test drives at convenient times',
          'Research vehicle history and market value',
          'Arrange for professional inspection if needed',
          'Negotiate price and payment terms',
          'Complete the transaction with proper documentation',
        ],
        tips: [
          'Always test drive the vehicle before purchasing',
          'Get a vehicle history report for used cars',
          'Have a mechanic inspect the car if possible',
          'Negotiate based on market research and condition',
          'Ensure all paperwork is properly completed',
        ],
        difficulty: 'Intermediate',
        estimatedTime: 1,
        appId: '4',
      ),
    ];
  }

  static List<TipItem> getTips() {
    return [
      TipItem(
        id: '1',
        title: 'Early Bird Gets the Best Deals',
        description:
            'Arrive at garage sales within the first hour to find the best items before they\'re picked over.',
        category: 'Garage Sales',
        icon: '⏰',
      ),
      TipItem(
        id: '2',
        title: 'Negotiate Respectfully',
        description:
            'Most garage sale prices are negotiable. Offer a fair price and be polite in your negotiations.',
        category: 'Garage Sales',
        icon: '🤝',
      ),
      TipItem(
        id: '3',
        title: 'Bring the Right Supplies',
        description:
            'Pack reusable bags, measuring tape, and small bills to make your garage sale shopping easier.',
        category: 'Garage Sales',
        icon: '🛍️',
      ),
      TipItem(
        id: '4',
        title: 'Research Neighborhood Values',
        description:
            'Before visiting open houses, research recent sales in the area to understand market values.',
        category: 'Real Estate',
        icon: '📊',
      ),
      TipItem(
        id: '5',
        title: 'Visit at Different Times',
        description:
            'Check out neighborhoods at various times to understand traffic, noise levels, and community feel.',
        category: 'Real Estate',
        icon: '🕐',
      ),
      TipItem(
        id: '6',
        title: 'Ask About Future Development',
        description:
            'Inquire about planned construction or development that might affect property values.',
        category: 'Real Estate',
        icon: '🏗️',
      ),
      TipItem(
        id: '7',
        title: 'Try Something New',
        description:
            'Street food is perfect for exploring new cuisines. Don\'t be afraid to try unfamiliar dishes.',
        category: 'Food & Dining',
        icon: '🌮',
      ),
      TipItem(
        id: '8',
        title: 'Support Local Vendors',
        description:
            'Your purchases directly support local families and preserve cultural food traditions.',
        category: 'Food & Dining',
        icon: '❤️',
      ),
      TipItem(
        id: '9',
        title: 'Check Vehicle History',
        description:
            'Always request a vehicle history report when buying a used car to avoid hidden problems.',
        category: 'Automotive',
        icon: '📋',
      ),
      TipItem(
        id: '10',
        title: 'Test Drive Thoroughly',
        description:
            'Take the car on different road types and test all features during your test drive.',
        category: 'Automotive',
        icon: '🚗',
      ),
    ];
  }

  static List<FAQItem> getFAQs() {
    return [
      FAQItem(
        id: '1',
        question: 'How do I find garage sales near me?',
        answer:
            'Use the Find Garage and Yard Sale app to browse sales by location, date, and category. The app shows sales on a map and in list format, making it easy to plan your route.',
        category: 'General',
      ),
      FAQItem(
        id: '2',
        question: 'Is it safe to buy from local sellers?',
        answer:
            'All our apps include secure messaging systems and user verification. Always meet in public places, bring a friend if possible, and trust your instincts.',
        category: 'Safety',
      ),
      FAQItem(
        id: '3',
        question: 'Can I negotiate prices at garage sales?',
        answer:
            'Yes! Most garage sale prices are negotiable. Be respectful and offer fair prices. Many sellers are willing to make deals, especially for multiple items.',
        category: 'Garage Sales',
      ),
      FAQItem(
        id: '4',
        question: 'How do I know if an open house is still available?',
        answer:
            'The Find Open House app provides real-time updates on open house availability. Always confirm with the listing agent before making a long trip.',
        category: 'Real Estate',
      ),
      FAQItem(
        id: '5',
        question: 'What should I bring to an open house?',
        answer:
            'Bring a notebook, camera, measuring tape, and a list of questions. Take photos and notes to help you remember details when comparing properties.',
        category: 'Real Estate',
      ),
      FAQItem(
        id: '6',
        question: 'How do I find street food vendors?',
        answer:
            'The Find Street Food app shows real-time locations of food vendors and trucks. You can filter by cuisine type, distance, and operating hours.',
        category: 'Food & Dining',
      ),
      FAQItem(
        id: '7',
        question: 'Can I order food ahead of time?',
        answer:
            'Many vendors in the Find Street Food app offer pre-ordering to help you skip the lines. Check individual vendor profiles for ordering options.',
        category: 'Food & Dining',
      ),
      FAQItem(
        id: '8',
        question: 'What should I check when buying a used car?',
        answer:
            'Always test drive the vehicle, check the vehicle history report, have a mechanic inspect it if possible, and ensure all paperwork is complete and legal.',
        category: 'Automotive',
      ),
      FAQItem(
        id: '9',
        question: 'How do I contact sellers through the apps?',
        answer:
            'Each app has a secure messaging system. Simply tap the contact button on any listing to start a conversation with the seller.',
        category: 'General',
      ),
      FAQItem(
        id: '10',
        question: 'Are the apps free to use?',
        answer:
            'Yes, all our apps are free to download and use. Some features may require account creation, but there are no subscription fees.',
        category: 'General',
      ),
    ];
  }

  static List<NewsItem> getNews() {
    return [
      NewsItem(
        id: '1',
        title: 'New Feature: Real-time Vendor Tracking',
        content:
            'Find Street Food now shows live locations of food trucks and vendors as they move around the city. This new feature helps you find your favorite street food vendors in real-time, so you never miss out on delicious meals.',
        category: 'Updates',
        publishDate: DateTime.now().subtract(const Duration(days: 2)),
        imageUrl: 'assets/find_street_food.jpeg',
      ),
      NewsItem(
        id: '2',
        title: 'Spring Garage Sale Season Tips',
        content:
            'Get ready for the busy spring garage sale season with our expert tips for buyers and sellers. Learn how to find the best deals, organize your own sale, and make the most of the garage sale season.',
        category: 'Tips',
        publishDate: DateTime.now().subtract(const Duration(days: 5)),
        imageUrl: 'assets/fgys.png',
      ),
      NewsItem(
        id: '3',
        title: 'Real Estate Market Update',
        content:
            'Current trends in the local real estate market and how to navigate open houses effectively. Stay informed about market conditions and learn strategies for successful home buying and selling.',
        category: 'Market',
        publishDate: DateTime.now().subtract(const Duration(days: 7)),
        imageUrl: 'assets/find_open_house.jpeg',
      ),
      NewsItem(
        id: '4',
        title: 'Safety Guidelines for Local Transactions',
        content:
            'Important safety tips for meeting with local sellers and buyers in your community. Learn how to protect yourself and have safe transactions when buying or selling items locally.',
        category: 'Safety',
        publishDate: DateTime.now().subtract(const Duration(days: 10)),
        imageUrl: 'assets/find_car_sale.jpeg',
      ),
    ];
  }
}
