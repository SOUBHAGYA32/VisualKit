# VisualKit

[![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)](https://github.com/SOUBHAGYA32/VisualKit/releases/tag/1.0.0)
[![Platform](https://img.shields.io/badge/platform-iOS%2017%2B%20%7C%20macOS%2014%2B%20%7C%20watchOS%2010%2B%20%7C%20tvOS%2017%2B-lightgrey.svg)](https://developer.apple.com)
[![Swift](https://img.shields.io/badge/swift-6.0%2B-orange.svg)](https://swift.org)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)

A comprehensive design system framework for SwiftUI applications that provides a unified source of truth for your app's visual identity.

## 🚀 Overview

VisualKit is a modular and scalable design system package designed to help developers create consistent, attractive, and maintainable user interfaces with ease. It promotes design consistency across app ecosystems, reduces visual drift, and accelerates UI development with reusable design tokens.

## ✨ Key Features

- **🎨 Comprehensive Design Tokens** - Colors, typography, spacing, and sizing systems
- **🌙 Theme Support** - Built-in light/dark mode theming
- **📱 Multi-Platform** - Support for iOS, macOS, watchOS, and tvOS
- **🔤 Rich Typography** - Multiple font families including Inter, Montserrat, Open Sans, Poppins, and Roboto
- **🎯 Adaptive Colors** - Intelligent color adaptation for different contexts
- **📐 Layout System** - Consistent spacing and sizing utilities
- **🧩 Modular Architecture** - Use only what you need
- **⚡ Performance Optimized** - Lightweight and efficient implementation

## 📦 Installation

### Swift Package Manager

Add VisualKit to your project using Swift Package Manager:

1. In Xcode, select **File** → **Add Package Dependencies**
2. Enter the repository URL:
   ```
   https://github.com/SOUBHAGYA32/VisualKit.git
   ```
3. Select the version rule (recommended: **Up to Next Major** with `1.0.0`)
4. Click **Add Package**

### Manual Installation

You can also add VisualKit manually by adding it to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/SOUBHAGYA32/VisualKit.git", from: "1.0.0")
]
```

## 🏗️ Architecture

VisualKit is organized into several core modules:

- **Colors** - Adaptive color system with theme support
- **Fonts** - Typography system with multiple font families
- **Sizes** - Component and layout sizing tokens
- **Spacing** - Consistent spacing system
- **Theme** - Central theming and configuration

## 🎯 Quick Start

### Basic Setup

```swift
import SwiftUI
import VisualKit

@main
struct MyApp: App {
    var body: some View {
       WindowGroup {
        ContentView()
            .themeProvider()
       }
    }
}
```

### Using Custom Font Families

```swift
// Create theme with specific font family
let robotoTheme = DesignSystemTheme(preferredFontFamily: .roboto)
let interTheme = DesignSystemTheme(preferredFontFamily: .inter)
let montserratTheme = DesignSystemTheme(preferredFontFamily: .montserrat)
```

### Accessing Design Tokens

```swift
import SwiftUI
import VisualKit

struct ContentView: View {
    @Environment(\.theme) private var theme
     @Environment(\.colorScheme) private var colorScheme

     private var primaryTextColor: Color {
        theme.colors.text(for: colorScheme)
     }

    private var textColor: Color {
        theme.colors.colors(light: \.blue500, dark: \.green500)(colorScheme)
    }

    private var customTextColor: Color {
        theme.colors(
            light: \.grayscaleBlack,
            dark: \.grayscaleWhite,
            colorScheme: colorScheme
        )
    }

     var body: some View {
        Text("Hello World!")
            .font(theme.fonts.bodyLargeStrong)
            .foregroundColor(primaryTextColor)
            .paddingXL()
     }
}
```

## 📖 Documentation

### Available Font Families

- **System** - Platform default fonts
- **Inter** - Modern, highly readable font
- **Montserrat** - Geometric, urban feel
- **Open Sans** - Friendly, humanist design
- **Poppins** - Geometric, friendly design
- **Roboto** - Clean, modern, Google's material design

### Color System

VisualKit provides a comprehensive color system with:
- Primary, secondary, and accent colors
- Background and surface colors
- Text colors with proper contrast ratios
- Status colors (success, warning, error, info)
- Adaptive colors that respond to light/dark mode

### Spacing System

Consistent spacing tokens for:
- Component padding and margins
- Layout spacing
- Element positioning

### Sizing System

Standardized sizes for:
- Buttons and interactive elements
- Icons and symbols
- Layout breakpoints
- Component dimensions

## 🛠️ Requirements

- iOS 17.0+ / macOS 14.0+ / watchOS 10.0+ / tvOS 17.0+
- Swift 6.0+
- Xcode 15.0+

## 📄 License

VisualKit is released under the MIT License. See [LICENSE](LICENSE) for details.

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📞 Support

If you have any questions or need help integrating VisualKit into your project, please open an issue on GitHub.

---

**Made with ❤️ by SOUBHAGYA32**