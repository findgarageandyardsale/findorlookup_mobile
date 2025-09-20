# Find or Lookup Mobile

A Flutter mobile application that showcases 4 different app descriptions with detailed views, video demos, and download links.

## App Descriptions

### Find Garage and Yard Sale
- **Simple, Secure & Fast** - Connect with Sellers and Buyers In Your Neighborhood
- Find Garage and Yard Sale is your user-friendly platform designed to effortlessly establish local garage and yard sales connections right in your community. The quick sign-up, intuitive navigation, and secure transactions were designed to help you effortlessly find amazing deals or post your own sale listing to reach nearby buyers. Keep your neighborhood decluttered as our organized sales ensure the transition of your unwanted items to treasures for others. Make an eco-friendly impact by giving your items a second life, while you earn cash. Sell fast, buy easily, and connect with your neighbors—all in one place!

### Find Open House
- **Your Easy Way to Buy or Sell** - Discover local open houses or list your own in minutes
- Find Open House is the smart and affordable way to discover and list real estate open houses near you. Whether you're a buyer searching for your dream home or a seller hosting an open house, our app makes it simple to connect with local buyers and showcase properties—all without the hassle of driving around or putting up signs.

### Find Street Food
- **Stop Searching. Start Tasting**
- Find Street Food connects food lovers with authentic street vendors and food trucks. Discover, enjoy, and support local food culture in your community.

### Find Car Sale
- **Find Your Next Ride — Fast & Local**
- Find Car Sale helps you easily list and discover cars for sale in your neighborhood, moving beyond just a paper sign on the windshield. Buyers can quickly browse local listings, view details, and connect with sellers right from the app.

## Features

- **Home Screen**: Displays 4 content cards with titles, subtitles, and preview images
- **Detail Pages**: Full-screen detail views for each app with:
  - App title and subtitle
  - Detailed description
  - Video player with demo content
  - Download buttons for App Store and Play Store
- **Modern UI**: Clean, gradient-based design with smooth animations
- **Video Integration**: Built-in video player for app demonstrations

## Getting Started

### Prerequisites

- Flutter SDK (3.9.2 or higher)
- Dart SDK
- Android Studio / VS Code
- iOS Simulator / Android Emulator

### Installation

1. Clone the repository
2. Navigate to the project directory
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Run the app:
   ```bash
   flutter run
   ```

## Dependencies

- `video_player: ^2.8.2` - For video playback functionality
- `url_launcher: ^6.2.2` - For opening external URLs (App Store/Play Store)

## Project Structure

```
lib/
├── main.dart                 # App entry point
├── models/
│   └── content_item.dart    # Data model for content items
├── services/
│   └── content_service.dart # Service for managing content data
├── screens/
│   ├── home_screen.dart     # Main home screen with content cards
│   └── content_detail_screen.dart # Detail screen for each app
└── widgets/
    └── video_player_widget.dart # Custom video player component
```

## Customization

To add your own content:

1. Update the `ContentService.getContentItems()` method in `lib/services/content_service.dart`
2. Replace the sample Vimeo video IDs with your actual video IDs
3. Update the App Store and Play Store URLs with your app links
4. Replace the sample images with your own app screenshots



