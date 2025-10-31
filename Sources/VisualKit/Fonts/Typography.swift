//
//  Typography.swift
//  VisualKit
//
//  Created by Soubhagya on 31/10/25.
//

import SwiftUI

// MARK: - System Typography (Backward Compatible)
public struct Typography: Sendable {

  // MARK: - Display Styles
  public static let displayLarge = Font.system(size: FontTokens.FontSize.x19, weight: FontTokens.FontWeight.bold)
  public static let displayMedium = Font.system(size: FontTokens.FontSize.x18, weight: FontTokens.FontWeight.bold)
  public static let displaySmall = Font.system(size: FontTokens.FontSize.x17, weight: FontTokens.FontWeight.bold)

  // MARK: - Headline Styles
  public static let headlineLarge = Font.system(size: FontTokens.FontSize.x16, weight: FontTokens.FontWeight.semibold)
  public static let headlineMedium = Font.system(size: FontTokens.FontSize.x15, weight: FontTokens.FontWeight.semibold)
  public static let headlineSmall = Font.system(size: FontTokens.FontSize.x14, weight: FontTokens.FontWeight.semibold)

  // MARK: - Title Styles
  public static let titleLarge = Font.system(size: FontTokens.FontSize.x13, weight: FontTokens.FontWeight.medium)
  public static let titleMedium = Font.system(size: FontTokens.FontSize.x12, weight: FontTokens.FontWeight.medium)
  public static let titleSmall = Font.system(size: FontTokens.FontSize.lg, weight: FontTokens.FontWeight.medium)

  // MARK: - Body Styles
  public static let bodyLarge = Font.system(size: FontTokens.FontSize.xl, weight: FontTokens.FontWeight.regular)
  public static let bodyLargeStrong = Font.system(size: FontTokens.FontSize.xl, weight: FontTokens.FontWeight.semibold)
  public static let bodyMedium = Font.system(size: FontTokens.FontSize.lg, weight: FontTokens.FontWeight.regular)
  public static let bodyMediumStrong = Font.system(size: FontTokens.FontSize.lg, weight: FontTokens.FontWeight.semibold)
  public static let bodySmall = Font.system(size: FontTokens.FontSize.md, weight: FontTokens.FontWeight.regular)
  public static let bodySmallStrong = Font.system(size: FontTokens.FontSize.md, weight: FontTokens.FontWeight.semibold)

  // MARK: - Label Styles
  public static let labelLarge = Font.system(size: FontTokens.FontSize.lg, weight: FontTokens.FontWeight.medium)
  public static let labelMedium = Font.system(size: FontTokens.FontSize.sm, weight: FontTokens.FontWeight.medium)
  public static let labelSmall = Font.system(size: FontTokens.FontSize.xs, weight: FontTokens.FontWeight.medium)

  // MARK: - Caption Styles
  public static let captionLarge = Font.system(size: FontTokens.FontSize.sm, weight: FontTokens.FontWeight.regular)
  public static let captionMedium = Font.system(size: FontTokens.FontSize.xs, weight: FontTokens.FontWeight.regular)
  public static let captionSmall = Font.system(size: FontTokens.FontSize.xs, weight: FontTokens.FontWeight.regular) // Typo in screenshot, same as captionMedium, assumed based on pattern

  // MARK: - Overline Style
  public static let overline = Font.system(size: FontTokens.FontSize.xs, weight: FontTokens.FontWeight.medium)

  public init() {}
}

// MARK: - Typography Extension with Line Heights
extension Typography {
  public struct TextStyle {
    public let font: Font
    public let lineHeight: CGFloat

    public init(font: Font, lineHeight: CGFloat) {
      self.font = font
      self.lineHeight = lineHeight
    }
  }

  // MARK: - Text Styles with Line Heights
  public var displayLargeStyle: TextStyle {
    TextStyle(font: Typography.displayLarge, lineHeight: FontTokens.LineHeight.x19)
  }

  public var displayMediumStyle: TextStyle {
    TextStyle(font: Typography.displayMedium, lineHeight: FontTokens.LineHeight.x18)
  }

  public var displaySmallStyle: TextStyle {
    TextStyle(font: Typography.displaySmall, lineHeight: FontTokens.LineHeight.x17)
  }

  public var headlineLargeStyle: TextStyle {
    TextStyle(font: Typography.headlineLarge, lineHeight: FontTokens.LineHeight.x16)
  }

  public var headlineMediumStyle: TextStyle {
    TextStyle(font: Typography.headlineMedium, lineHeight: FontTokens.LineHeight.x15)
  }

  public var headlineSmallStyle: TextStyle {
    TextStyle(font: Typography.headlineSmall, lineHeight: FontTokens.LineHeight.x14)
  }

  public var titleLargeStyle: TextStyle {
    TextStyle(font: Typography.titleLarge, lineHeight: FontTokens.LineHeight.x13)
  }

  public var titleMediumStyle: TextStyle {
    TextStyle(font: Typography.titleMedium, lineHeight: FontTokens.LineHeight.x12)
  }

  public var titleSmallStyle: TextStyle {
    TextStyle(font: Typography.titleSmall, lineHeight: FontTokens.LineHeight.lg)
  }

  public var bodyLargeStyle: TextStyle {
    TextStyle(font: Typography.bodyLarge, lineHeight: FontTokens.LineHeight.lg)
  }

  public var bodyLargeStrongStyle: TextStyle {
    TextStyle(font: Typography.bodyLargeStrong, lineHeight: FontTokens.LineHeight.lg)
  }

  public var bodyMediumStyle: TextStyle {
    TextStyle(font: Typography.bodyMedium, lineHeight: FontTokens.LineHeight.md)
  }

  public var bodyMediumStrongStyle: TextStyle {
    TextStyle(font: Typography.bodyMediumStrong, lineHeight: FontTokens.LineHeight.md)
  }

  public var bodySmallStyle: TextStyle {
    TextStyle(font: Typography.bodySmall, lineHeight: FontTokens.LineHeight.sm)
  }

  public var bodySmallStrongStyle: TextStyle {
    TextStyle(font: Typography.bodySmallStrong, lineHeight: FontTokens.LineHeight.sm)
  }

  public var labelLargeStyle: TextStyle {
    TextStyle(font: Typography.labelLarge, lineHeight: FontTokens.LineHeight.md)
  }

  public var labelMediumStyle: TextStyle {
    TextStyle(font: Typography.labelMedium, lineHeight: FontTokens.LineHeight.sm)
  }

  public var labelSmallStyle: TextStyle {
    TextStyle(font: Typography.labelSmall, lineHeight: FontTokens.LineHeight.xs)
  }

  public var captionLargeStyle: TextStyle {
    TextStyle(font: Typography.captionLarge, lineHeight: FontTokens.LineHeight.sm)
  }

  public var captionMediumStyle: TextStyle {
    TextStyle(font: Typography.captionMedium, lineHeight: FontTokens.LineHeight.xs)
  }

  public var overlineStyle: TextStyle {
    TextStyle(font: Typography.overline, lineHeight: FontTokens.LineHeight.xs)
  }
}

// MARK: - View Extension for Easy Text Styling
extension Text {
  public func textStyle(_ style: Typography.TextStyle) -> some View {
    self
      .font(style.font)
      .lineSpacing(style.lineHeight - style.font.lineHeight)
  }
}

// MARK: - Font Extension for Line Height Calculation
extension Font {
  var lineHeight: CGFloat {
    return 16 * 1.2
  }
}
