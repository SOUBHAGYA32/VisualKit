import SwiftUI

#if canImport(UIKit)
import UIKit
#endif

//MARK: - Theme Colors
public struct ThemeColors: Sendable {

  private let tokens = ColorTokens()

  // MARK: - Color Access Helper (Fixed - No generics needed)
  public func color(
    light lightKeyPath: KeyPath<ColorTokens, Color>,
    dark darkKeyPath: KeyPath<ColorTokens, Color>,
    for colorScheme: ColorScheme
  ) -> Color {
    let lightColor = tokens[keyPath: lightKeyPath]
    let darkColor = tokens[keyPath: darkKeyPath]
    
    switch colorScheme {
    case .dark:
      return darkColor
    default:
      return lightColor
    }
  }

  // MARK: - UIKit Color Access Helper
  #if canImport(UIKit)
  public func color(
    light lightKeyPath: KeyPath<ColorTokens, Color>,
    dark darkKeyPath: KeyPath<ColorTokens, Color>
  ) -> AdaptiveUIColor {
    let lightColor = tokens[keyPath: lightKeyPath]
    let darkColor = tokens[keyPath: darkKeyPath]
    
    return AdaptiveUIColor(light: lightColor, dark: darkColor)
  }
  #endif

  // MARK: - Semantic Colors (Light Theme)
  public var lightBackground: Color { tokens.grayscaleWhite }
  public var lightSurface: Color { tokens.grayscaleGray50 }
  public var lightPrimary: Color { tokens.primary500 }
  public var lightOnPrimary: Color { tokens.grayscaleWhite }
  public var lightSecondary: Color { tokens.secondary500 }
  public var lightOnSecondary: Color { tokens.grayscaleWhite }
  public var lightError: Color { tokens.error500 }
  public var lightOnError: Color { tokens.grayscaleWhite }
  public var lightWarning: Color { tokens.warning500 }
  public var lightOnWarning: Color { tokens.grayscaleBlack }
  public var lightSuccess: Color { tokens.success500 }
  public var lightOnSuccess: Color { tokens.grayscaleBlack }

  public var lightText: Color { tokens.grayscaleBlack }
  public var lightTextSecondary: Color { tokens.grayscaleGray700 }
  public var lightTextTertiary: Color { tokens.grayscaleGray500 }
  public var lightBorder: Color { tokens.grayscaleGray200 }
  public var lightDivider: Color { tokens.grayscaleGray300 }

  // MARK: - Semantic Colors (Dark Theme)
  public var darkBackground: Color { tokens.grayscaleGray900 }
  public var darkSurface: Color { tokens.grayscaleGray800 }
  public var darkPrimary: Color { tokens.primary400 }
  public var darkOnPrimary: Color { tokens.grayscaleBlack }
  public var darkSecondary: Color { tokens.secondary400 }
  public var darkOnSecondary: Color { tokens.grayscaleBlack }
  public var darkError: Color { tokens.error400 }
  public var darkOnError: Color { tokens.grayscaleBlack }
  public var darkWarning: Color { tokens.warning400 }
  public var darkOnWarning: Color { tokens.grayscaleBlack }
  public var darkSuccess: Color { tokens.success400 }
  public var darkOnSuccess: Color { tokens.grayscaleBlack }

  public var darkText: Color { tokens.grayscaleWhite }
  public var darkTextSecondary: Color { tokens.grayscaleGray300 }
  public var darkTextTertiary: Color { tokens.grayscaleGray500 }
  public var darkBorder: Color { tokens.grayscaleGray600 }
  public var darkDivider: Color { tokens.grayscaleGray700 }

  public init() {}
}
