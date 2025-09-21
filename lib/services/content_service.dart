import '../models/content_item.dart';

class ContentService {
  static List<ContentItem> getContentItems() {
    return [
      ContentItem(
        id: '1',
        title: 'Find Garage and Yard Sale',
        subtitle:
            'Simple, Secure & Fast - Connect with Sellers and Buyers In Your Neighborhood',
        description:
            'Find Garage and Yard Sale is your user-friendly platform designed to effortlessly establish local garage and yard sales connections right in your community. The quick sign-up, intuitive navigation, and secure transactions were designed to help you effortlessly find amazing deals or post your own sale listing to reach nearby buyers. Keep your neighborhood decluttered as our organized sales ensure the transition of your unwanted items to treasures for others. Make an eco-friendly impact by giving your items a second life, while you earn cash. Sell fast, buy easily, and connect with your neighbors—all in one place!',
        imageUrl: 'assets/fgys.png',
        vimeoVideoId: '1042070258',
        appStoreUrl:
            'https://apps.apple.com/us/app/find-garage-yard-sale/id6737464722',
        playStoreUrl:
            'https://play.google.com/store/apps/details?id=com.garageyard.garageyardsale',

        whyChooseUs: [
          AppWhyChooseUs(
            icon: '💰',
            title: 'Sell Smartly, Earn Instantly',
            description:
                'Post your garage or yard sale with photos, descriptions, and preferred dates. Transform your unwanted items into immediate cash.',
          ),
          AppWhyChooseUs(
            icon: '💎',
            title: 'Excellent way to find your Treasure',
            description:
                'With our garage and yard sales, you get to turn items otherwise trashed by others into valuable "treasures."',
          ),
          AppWhyChooseUs(
            icon: '📍',
            title: 'Find Nearby Sales',
            description:
                'Search for sales going on around your neighborhood through our convenient list views and maps.',
          ),
          AppWhyChooseUs(
            icon: '🔒',
            title: 'Safe and Secure Platform',
            description:
                'Securely connect with sellers or buyers through our in-app messaging system for safe transactions.',
          ),
          AppWhyChooseUs(
            icon: '🌱',
            title: 'The Eco-Friendly Choice',
            description:
                'Support sustainability by giving your items a second life and promoting reuse within your community.',
          ),
          AppWhyChooseUs(
            icon: '💸',
            title: 'Zero Hidden Costs',
            description:
                'Skip shipping fees, platform charges, or placard expenses–all transactions are conducted in person. Massive savings are guaranteed for everyone.',
          ),
          AppWhyChooseUs(
            icon: '🤝',
            title: 'Community Connection',
            description:
                'Establish your terms – from pricing to timing and enjoy a hassle-free selling experience right from the comfort of your home.',
          ),
          AppWhyChooseUs(
            icon: '🧹',
            title: 'Keep your Community Clean',
            description:
                'With a well-organized garage sale, you declutter your space without having to put up street signs, creating a welcoming treasure trove for local shoppers.',
          ),
        ],
      ),
      ContentItem(
        id: '2',
        title: 'Find Open House',
        subtitle:
            'Your Easy Way to Buy or Sell - Discover local open houses or list your own in minutes',
        description:
            'Find Open House is the smart and affordable way to discover and list real estate open houses near you. Whether you\'re a buyer searching for your dream home or a seller hosting an open house, our app makes it simple to connect with local buyers and showcase properties—all without the hassle of driving around or putting up signs.',
        imageUrl: 'assets/find_open_house.jpeg',
        vimeoVideoId: '1116346403',
        appStoreUrl:
            'https://apps.apple.com/us/app/find-open-house/id6745729064',
        playStoreUrl:
            'https://play.google.com/store/apps/details?id=com.findorlookup.openhouse',

        whyChooseUs: [
          AppWhyChooseUs(
            icon: '📝',
            title: 'List Easily, Attract Quickly',
            description:
                'Create an open house listing in minutes with photos, descriptions, and dates. Get your property in front of serious buyers fast.',
          ),
          AppWhyChooseUs(
            icon: '🏠',
            title: 'Discover Homes That Fit You',
            description:
                'No more aimless driving. Browse available open houses nearby with detailed listings, images, and schedules — all in one place.',
          ),
          AppWhyChooseUs(
            icon: '🗺️',
            title: 'Navigate with Ease',
            description:
                'Use our map and list views to plan your visit route efficiently. Get directions straight from the app.',
          ),
          AppWhyChooseUs(
            icon: '💬',
            title: 'Safe and Direct Communication',
            description:
                'Connect with sellers or agents through our secure in-app messaging, ensuring a safe and reliable experience.',
          ),
          AppWhyChooseUs(
            icon: '⏰',
            title: 'Save Time, Save Effort',
            description:
                'Forget driving around looking for signs. Go directly to listed open houses that match your needs.',
          ),
          AppWhyChooseUs(
            icon: '🎯',
            title: 'Real Estate, Your Way',
            description:
                'Whether buying or showcasing a home, control the schedule, details, and interaction—all from the app.',
          ),
          AppWhyChooseUs(
            icon: '🌍',
            title: 'Cleaner Streets, Smarter Marketing',
            description:
                'Skip cluttering neighborhoods with cardboard signs. Promote your open house digitally and reach a wider local audience.',
          ),
        ],
      ),
      ContentItem(
        id: '3',
        title: 'Find Street Food',
        subtitle: 'Stop Searching. Start Tasting',
        description:
            'Find Street Food connects food lovers with authentic street vendors and food trucks. Discover, enjoy, and support local food culture in your community.',
        imageUrl: 'assets/find_street_food.jpeg',
        vimeoVideoId: '1116346495',
        appStoreUrl:
            'https://apps.apple.com/us/app/find-street-food/id6752117638',
        playStoreUrl:
            'https://play.google.com/store/apps/details?id=com.findorlookup.streetfood',
        whyChooseUs: [
          AppWhyChooseUs(
            icon: '🍜',
            title: 'Authentic Cuisine',
            description:
                'Discover genuine street food from local vendors and food trucks',
          ),
          AppWhyChooseUs(
            icon: '📍',
            title: 'Real-Time Locations',
            description:
                'Find food vendors near you with live location updates',
          ),
          AppWhyChooseUs(
            icon: '⭐',
            title: 'Community Reviews',
            description:
                'Read reviews from fellow food lovers and share your experiences',
          ),
          AppWhyChooseUs(
            icon: '🎯',
            title: 'Food Discovery',
            description: 'Explore new cuisines and hidden gems in your area',
          ),
          AppWhyChooseUs(
            icon: '💳',
            title: 'Easy Ordering',
            description:
                'Order ahead and skip the lines at your favorite food spots',
          ),
          AppWhyChooseUs(
            icon: '🌍',
            title: 'Cultural Experience',
            description:
                'Support local food culture and diverse culinary traditions',
          ),
        ],
      ),
      ContentItem(
        id: '4',
        title: 'Find Car Sale',
        subtitle: 'Find Your Next Ride — Fast & Local',
        description:
            'Find Car Sale helps you easily list and discover cars for sale in your neighborhood, moving beyond just a paper sign on the windshield. Buyers can quickly browse local listings, view details, and connect with sellers right from the app.',
        imageUrl: 'assets/find_car_sale.jpeg',
        vimeoVideoId: '1120534565',
        appStoreUrl: 'https://apps.apple.com/app/find-car-sale/id789123456',
        playStoreUrl:
            'https://play.google.com/store/apps/details?id=com.findcarsale.app',
        whyChooseUs: [
          AppWhyChooseUs(
            icon: '👥',
            title: 'User Friendly for Car buyers and sellers',
            description:
                'Buy easily – Sell quickly with our intuitive interface designed for both buyers and sellers.',
          ),
          AppWhyChooseUs(
            icon: '📍',
            title: 'Location-based results',
            description:
                'Find nearby deals and local car listings in your neighborhood.',
          ),
          AppWhyChooseUs(
            icon: '⚡',
            title: 'Fast listings & quick sales',
            description:
                'List your car in minutes and connect with serious buyers quickly.',
          ),
          AppWhyChooseUs(
            icon: '🤝',
            title: 'Direct connections',
            description:
                'Connect buyers & sellers directly through our secure messaging system.',
          ),
        ],
      ),
    ];
  }
}
