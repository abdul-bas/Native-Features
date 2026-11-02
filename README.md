# Native Features

A Flutter application that presents native device features in a modular, organized interface. The project separates feature data, shared styling, and reusable UI components to keep the codebase easy to maintain and extend.

## Project Structure

```text
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

## Architecture Overview

- **Core:** Contains shared application constants, including color definitions.
- **Data:** Holds the native-feature data source.
- **Presentation:** Contains the home screen and reusable widgets used to display feature modules.
- **Main:** Application entry point.

## Getting Started

### Prerequisites

- Flutter SDK
- Dart SDK
- An IDE such as Android Studio or Visual Studio Code

### 1. Clone the Repository

```bash
git clone <repository-url>
cd <project-directory>
