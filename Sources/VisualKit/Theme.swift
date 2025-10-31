import SwiftUI

// MARK: - Theme Protocol
public protocol ThemeProviding{
  var fonts: Typography { get }
  var enhancedFonts: EnhancedTypography { get }
  var colors: ThemeColors { get }
  var spacing: Spacing { get }
  var sizes: ComponentSizes {get}
  var layoutSizes: LayoutSizes { get }
}

public struct DesignSystemTheme: ThemeProviding, Sendable {
  public let fonts: Typography
  public let enhancedFonts: EnhancedTypography
  public let colors: ThemeColors
  public let spacing: Spacing
  public let sizes: ComponentSizes
  public let layoutSizes: LayoutSizes

  public init(preferredFontFamily: AvailableFontFamily = .roboto) {
    self.fonts = Typography()
    self.enhancedFonts = EnhancedTypography(preferredFontFamily: preferredFontFamily)
    self.colors = ThemeColors()
    self.spacing = Spacing()
    self.sizes = ComponentSizes()
    self.layoutSizes = LayoutSizes()
  }

  // Convenience initializers for specific font families
  public static func withRoboto() -> DesignSystemTheme {
    return DesignSystemTheme(preferredFontFamily: .roboto)
  }

  public static func withPoppins() -> DesignSystemTheme {
    return DesignSystemTheme(preferredFontFamily: .poppins)
  }

  public static func withMontserrat() -> DesignSystemTheme {
    return DesignSystemTheme(preferredFontFamily: .montserrat)
  }

  public static func withInter() -> DesignSystemTheme {
    return DesignSystemTheme(preferredFontFamily: .inter)
  }

  public static func withOpenSans() -> DesignSystemTheme {
    return DesignSystemTheme(preferredFontFamily: .openSans)
  }

  public static func withSystemFonts() -> DesignSystemTheme {
    return DesignSystemTheme(preferredFontFamily: .system)
  }
}

// MARK: - Enhanced Theme Colors with ColorScheme Support
extension ThemeColors {
  public func colors<T>(light lightKeyPath: KeyPath<ColorTokens, T>, dark darkKeyPath: KeyPath<ColorTokens, T>, colorScheme: ColorScheme = .light) -> T {
    let tokens = ColorTokens()
    switch colorScheme {
    case .light:
      return tokens[keyPath: lightKeyPath]
    case .dark:
      return tokens[keyPath: darkKeyPath]
    @unknown default:
      return tokens[keyPath: lightKeyPath]
    }
  }

  // MARK: - Semantic Color Access with ColorScheme
  public func background(for colorScheme: ColorScheme) -> Color {
    switch colorScheme {
    case .light: return lightBackground
    case .dark: return darkBackground
    @unknown default: return lightBackground
    }
  }

  public func surface(for colorScheme: ColorScheme) -> Color {
    switch colorScheme {
    case .light: return lightSurface
    case .dark: return darkSurface
    @unknown default: return lightSurface
    }
  }

  public func primary(for colorScheme: ColorScheme) -> Color {
    switch colorScheme {
    case .light: return lightPrimary
    case .dark: return darkPrimary
    @unknown default: return lightPrimary
    }
  }

  public func onPrimary(for colorScheme: ColorScheme) -> Color {
    switch colorScheme {
    case .light: return lightOnPrimary
    case .dark: return darkOnPrimary
    @unknown default: return lightOnPrimary
    }
  }

  public func secondary(for colorScheme: ColorScheme) -> Color {
    switch colorScheme {
    case .light: return lightSecondary
    case .dark: return darkSecondary
    @unknown default: return lightSecondary
    }
  }

  public func onSecondary(for colorScheme: ColorScheme) -> Color {
    switch colorScheme {
    case .light: return lightOnSecondary
    case .dark: return darkOnSecondary
    @unknown default: return lightOnSecondary
    }
  }

  public func text(for colorscheme: ColorScheme) -> Color {
    switch colorscheme {
    case .light: return lightText
    case .dark: return darkText
    @unknown default: return lightText
    }
  }

  public func textSecondary(for colorScheme: ColorScheme) -> Color {
    switch colorScheme {
    case .light: return lightTextSecondary
    case .dark: return darkTextSecondary
    @unknown default: return lightTextSecondary
    }
  }

  public func textTertiary(for colorScheme: ColorScheme) -> Color {
    switch colorScheme {
    case .light: return lightTextTertiary
    case .dark: return darkTextTertiary
    @unknown default: return lightTextTertiary
    }
  }

  public func border(for colorScheme: ColorScheme) -> Color {
    switch colorScheme {
    case .light: return lightBorder
    case .dark: return darkBorder
    @unknown default: return lightBorder
    }
  }


  public func divider(for colorScheme: ColorScheme) -> Color {
    switch colorScheme {
    case .light: return lightDivider
    case .dark: return darkDivider
    @unknown default: return lightDivider
    }
  }

  public func error(for colorScheme: ColorScheme) -> Color {
    switch colorScheme {
    case .light: return lightError
    case .dark: return darkError
    @unknown default: return lightError
    }
  }
}

// MARK: - Theme Environment Key
public struct ThemeEnvironmentKey: EnvironmentKey {
  public static let defaultValue: DesignSystemTheme = DesignSystemTheme()
}

// MARK: - Environment Values Extension
extension EnvironmentValues {
  public var theme: DesignSystemTheme {
    get { self[ThemeEnvironmentKey.self] }
    set { self[ThemeEnvironmentKey.self] = newValue }
  }
}

// MARK: - Theme Provider View Modifier
public struct ThemeProviderModifier: ViewModifier {
  private let theme: DesignSystemTheme

  public init(theme: DesignSystemTheme = DesignSystemTheme()) {
    self.theme = theme
  }

  public func body(content: Content) -> some View {
    content
      .environment(\.theme, theme)
  }
}

//MARK: - View Extension for Theme Provider
extension View {
  public func themeProvider(_ theme: DesignSystemTheme = DesignSystemTheme()) -> some View {
    self.modifier(ThemeProviderModifier(theme: theme))
  }
}

// MARK: - Themed Color Helper
public struct ThemedColor {
  private let lightColor: Color
  private let darkColor: Color

  public init(light: Color, dark: Color) {
    self.darkColor = dark
    self.lightColor = light
  }

  public func color(for colorScheme: ColorScheme) -> Color {
    switch colorScheme {
    case .light: return lightColor
    case .dark: return darkColor
    @unknown default: return lightColor
    }
  }
}

// MARK: - Convenience Extensions for Themed Colors
extension DesignSystemTheme {
  public func primaryTextColor(colorScheme: ColorScheme) -> Color {
    colors.text(for: colorScheme)
  }

  public func secondaryTextColor(colorScheme: ColorScheme) -> Color {
    colors.textSecondary (for: colorScheme)
  }

  public func backgroundColor(colorScheme: ColorScheme) -> Color {
    colors.background (for: colorScheme)
  }

  public func surfaceColor(colorScheme: ColorScheme) -> Color {
    colors.surface(for: colorScheme)
  }
}
