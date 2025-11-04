#if canImport(UIKit)
import UIKit
import SwiftUI

// MARK: - ThemeColors UIKit Extensions
public extension ThemeColors {
  
  // MARK: - Semantic Color Accessors for UIKit
  
  /// Primary colors
  var primary: AdaptiveUIColor {
    color(light: \.primary500, dark: \.primary400)
  }
  
  /// Secondary colors
  var secondary: AdaptiveUIColor {
    color(light: \.secondary500, dark: \.secondary400)
  }
  
  /// Background colors
  var background: BackgroundUIColors {
    BackgroundUIColors(themeColors: self)
  }
  
  /// Text colors
  var text: TextUIColors {
    TextUIColors(themeColors: self)
  }
  
  /// Status colors
  var status: StatusUIColors {
    StatusUIColors(themeColors: self)
  }
}

// MARK: - Background Colors for UIKit
public struct BackgroundUIColors {
  private let themeColors: ThemeColors
  
  init(themeColors: ThemeColors) {
    self.themeColors = themeColors
  }
  
  public var primary: AdaptiveUIColor {
    themeColors.color(light: \.grayscaleWhite, dark: \.grayscaleGray900)
  }
  
  public var secondary: AdaptiveUIColor {
    themeColors.color(light: \.grayscaleGray50, dark: \.grayscaleGray800)
  }
  
  public var tertiary: AdaptiveUIColor {
    themeColors.color(light: \.grayscaleGray100, dark: \.grayscaleGray700)
  }
}

// MARK: - Text Colors for UIKit
public struct TextUIColors {
  private let themeColors: ThemeColors
  
  init(themeColors: ThemeColors) {
    self.themeColors = themeColors
  }
  
  public var primary: AdaptiveUIColor {
    themeColors.color(light: \.grayscaleBlack, dark: \.grayscaleWhite)
  }
  
  public var secondary: AdaptiveUIColor {
    themeColors.color(light: \.grayscaleGray700, dark: \.grayscaleGray300)
  }
  
  public var tertiary: AdaptiveUIColor {
    themeColors.color(light: \.grayscaleGray500, dark: \.grayscaleGray500)
  }
}

// MARK: - Status Colors for UIKit
public struct StatusUIColors {
  private let themeColors: ThemeColors
  
  init(themeColors: ThemeColors) {
    self.themeColors = themeColors
  }
  
  public var success: AdaptiveUIColor {
    themeColors.color(light: \.success500, dark: \.success400)
  }
  
  public var warning: AdaptiveUIColor {
    themeColors.color(light: \.warning500, dark: \.warning400)
  }
  
  public var error: AdaptiveUIColor {
    themeColors.color(light: \.error500, dark: \.error400)
  }
  
  public var info: AdaptiveUIColor {
    themeColors.color(light: \.blue500, dark: \.blue400)
  }
}

#endif