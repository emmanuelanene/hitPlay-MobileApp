# 🎧 HitPlay – A Flutter Music Streaming App

![Home Page](assets/screenshots/lm-0.png)

**HitPlay** is a sleek music streaming app built with Flutter. It features authentication, light/dark mode support, tab-based content browsing, and an audio player – all powered by clean state management using Flutter BLoC/Cubit.

---

![Audio Player](assets/screenshots/lm-1.png)

## 📱 Features

- 🟣 **Splash Screen** – A quick branded intro when the app launches.
- 🌗 **Theme Selector** – Choose between dark and light modes.
- 🔐 **User Authentication** – Sign up or log in to continue.
- 🏠 **Home Page with Tabs** – Navigate through News, Videos, Artists, and Podcasts.
- 🎵 **Audio Player** – Stream and control playback of selected songs.
- ❤️ **Favorite Songs** – Tap the heart icon to add/remove songs from your favorites.
- 💾 **State Management with BLoC** – Efficient UI updates using Cubit/BLoC.


---
![Splash Screen](assets/screenshots/dm-0.png)
## 🧑‍💻 Tech Stack

- **Flutter**
- **Dart**
- **Flutter BLoC / Cubit**
- **Firebase Auth & Storage**

---

![Get Started](assets/screenshots/dm-1.png)
## 🚀 Getting Started

### Prerequisites
- Flutter SDK installed
- Android Studio or Xcode (for iOS)
- A connected device or emulator

### Setup Instructions

```bash
# Clone the repository
git clone https://github.com/your-username/hitplay.git
cd hitplay

# Install dependencies
flutter pub get

# Firebase configuration
firebase configure

# (iOS only) Install pods
cd ios && pod install && cd ..

# Run the app
flutter run
