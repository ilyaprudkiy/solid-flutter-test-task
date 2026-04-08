# Solid Flutter Test Task

A Flutter application created for the Solid Software Flutter Engineer test task.

The app starts with a white background and displays **"Hello there"** in the center of the screen.  
After tapping anywhere on the screen, the background smoothly changes to a randomly generated RGB
color.

## Implemented Features

- White background on startup
- Centered welcome text
- Random RGB color generation using `dart:math`
- Full-screen tap handling with `GestureDetector`
- Smooth background color transition using `AnimatedContainer`
- Static analysis with `solid_lints`

## Run

```bash
flutter pub get
flutter run