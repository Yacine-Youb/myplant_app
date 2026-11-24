# MyPlant

A modern Flutter plant shopping app with a welcoming landing screen, categorized plant discovery, searchable product listings, and detailed product views.

## Features

- Welcome screen with login, sign-up, and guest entry options
- Discover plants with a search field
- Browse plants by category
- Horizontally scroll through popular plants
- View plant details, descriptions, specifications, and image galleries
- Mark plants as favorites
- Responsive Material Design interface

## Tech Stack

- Flutter
- Dart
- Material Design
- Font Awesome Flutter

## Screens

- **Welcome** — introductory screen and app entry
- **Home** — plant categories and popular plants
- **Plant details** — multiple images, description, category, and favorite state

## Getting Started

### Prerequisites

- Flutter SDK
- Dart SDK
- An emulator or connected device

### Installation

```bash
git clone https://github.com/Yacine-Youb/myplant_app.git
cd myplant_app
flutter pub get
flutter run
```

### Run Tests

```bash
flutter test
```

## Project Structure

```text
lib/
├── main.dart
├── screens/
│   ├── welcome_screen.dart
│   ├── home_screen.dart
│   └── details_screen.dart
└── widget/
    ├── category_widget.dart
    └── plant_card.dart
assets/
└── images/
```

## Assets

Plant and category images are stored in `assets/images/` and declared in `pubspec.yaml`.

## Author

Created by Yacine Youb.
