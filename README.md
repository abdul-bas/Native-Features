# Native Features

A Flutter application that presents native device features in a modular, organized interface. The project separates feature data, shared styling, and reusable UI components to keep the codebase easy to maintain and extend.

## Project Structure

```
lib/
├── core/
│   └── constants/
│       └── app_colors.dart
├── data/
│   └── datasources/
│       └── native/
│           └── native_features.dart
├── presentation/
│   ├── screens/
│   │   └── home_page.dart
│   └── widgets/
│       ├── header.dart
│       ├── info_note.dart
│       ├── module_grid.dart
│       ├── module_row.dart
│       └── section_label.dart
└── main.dart
```

## Architecture Overview

- **Core**: Contains shared application constants, including color definitions.
- **Data**: Holds the native-feature data source.
- **Presentation**: Contains the home screen and reusable widgets used to display feature modules.
- **Main**: Application entry point.

## Getting Started

### Prerequisites

- Flutter SDK
- Dart SDK
- An IDE such as Android Studio or Visual Studio Code

### 1. Clone the Repository

```bash
git clone <repository-url>
cd <project-directory>
```

Replace `<repository-url>` and `<project-directory>` with your repository details.

### 2. Install Dependencies

```bash
flutter pub get
```

### 3. Run the Application

```bash
flutter run
```

## Dependencies

The dependencies currently listed in `pubspec.yaml` include:

| Package           | Purpose                              |
| ----------------- | ------------------------------------ |
| `flutter`         | Flutter SDK                          |
| `cupertino_icons` | iOS-style icons                      |
| `flutter_test`    | Flutter testing support              |
| `flutter_lints`   | Recommended Dart and Flutter lint rules |

Refer to `pubspec.yaml` for the exact package versions and any additional dependencies.

## Development

Run the static analyzer with:

```bash
flutter analyze
```

Run the project tests with:

```bash
flutter test
```

## Notes

- The project structure is based on the current `lib/` folder organization.
- Add or update feature descriptions here as more native capabilities are implemented.
- Keep reusable presentation components inside `presentation/widgets/` and shared constants inside `core/constants/`.
