# Technoprise Mobile App

Technoprise is a simple mobile application built using Flutter that allows users to manage a list of items. Each item consists of a title and a description. The app provides features to add new items via a form and delete existing items from the list. The app is designed to be responsive and compatible with both iOS and Android platforms.

## Features

- **Display List of Items**: The app displays a list of items, each with a title and description.
- **Add New Items**: Users can add new items to the list by filling out a form.
- **Delete Items**: Users can delete items from the list with a confirmation dialog to prevent accidental deletions.
- **Responsive Design**: The app is designed to work seamlessly on both iOS and Android devices.

## Requirements

To run the Technoprise app, you need to have the following software installed on your machine:

- [Flutter](https://flutter.dev/docs/get-started/install)
- [Dart](https://dart.dev/get-dart)
- [Android Studio](https://developer.android.com/studio) or [Xcode](https://developer.apple.com/xcode/)

## Installation

1. **Clone the Repository**:
   ```sh
   git clone https://github.com/ElvinEga/technoprise.git
   cd technoprise
   ```

2. **Install Dependencies**:
   ```sh
   flutter pub get
   ```

3. **Run the App**:
    - Connect your device or start an emulator/simulator.
    - Run the following command to launch the app:
      ```sh
      flutter run
      ```

## Project Structure

The project structure is organized as follows:

```
technoprise/
├── lib/
│   ├── models/
│   │   ├── contentlist_item_model.dart
│   │   └── item_list_model.dart
│   ├── controllers/
│   │   ├── add_controller.dart
│   │   └── item_list_controller.dart
│   ├── views/
│   │   ├── add_screen.dart
│   │   └── item_list_screen.dart
│   ├── widgets/
│   │   ├── contentlist_item_widget.dart
│   │   └── custom_widgets.dart
│   ├── main.dart
├── test/
├── assets/
├── pubspec.yaml
└── README.md
```

- **lib/models**: Contains the data models used in the app.
- **lib/controllers**: Contains the controllers for managing the state and logic of the app.
- **lib/views**: Contains the UI screens of the app.
- **lib/widgets**: Contains reusable widgets used across the app.
- **test**: Contains test files for the app.
- **assets**: Contains static assets like images.
- **pubspec.yaml**: The Flutter project configuration file.

## Contributing

Contributions to the Technoprise app are welcome! If you find any bugs or want to add new features, please open an issue or submit a pull request.

