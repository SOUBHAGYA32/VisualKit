//
//  EnhancedTypography.swift
//  VisualKit
//
//  Created by Soubhagya on 31/10/25.
//

import SwiftUI

// MARK: - Font Family Wrapper Structs
public struct RobotoFonts: Sendable {
  public init() {}
  // Headline styles with weights
  public var headlineMediumBold: Font { Font.custom("Roboto-Bold", size: FontTokens.FontSize.x15) }
  public var headlineMediumSemibold: Font { Font.custom("Roboto-Semibold", size: FontTokens.FontSize.x15) }
  public var headlineMediumMedium: Font { Font.custom("Roboto-Medium", size: FontTokens.FontSize.x15) }
  public var headlineMediumRegular: Font { Font.custom("Roboto-Regular", size: FontTokens.FontSize.x15) }
  public var headlineMediumLight: Font { Font.custom("Roboto-Light", size: FontTokens.FontSize.x15) }

  // Body styles with weights
  public var bodyLargeBold: Font { Font.custom("Roboto-Bold", size: FontTokens.FontSize.lg) }
  public var bodyMediumBold: Font { Font.custom("Roboto-Bold", size: FontTokens.FontSize.md) }
  public var bodyLargeRegular: Font { Font.custom("Roboto-Regular", size: FontTokens.FontSize.lg) }
  public var bodyMediumRegular: Font { Font.custom("Roboto-Regular", size: FontTokens.FontSize.md) }

  // Title styles
  public var titleLargeBold: Font { Font.custom("Roboto-Bold", size: FontTokens.FontSize.x13) }
  public var titleMediumBold: Font { Font.custom("Roboto-Bold", size: FontTokens.FontSize.x12) }
}


public struct PoppinsFonts: Sendable {
  public init() {}
  // Headline styles with weights
  public var headlineMediumBold: Font { Font.custom("Poppins-Bold", size: FontTokens.FontSize.x15) }
  public var headlineMediumSemibold: Font { Font.custom("Poppins-Semibold", size: FontTokens.FontSize.x15) }
  public var headlineMediumMedium: Font { Font.custom("Poppins-Medium", size: FontTokens.FontSize.x15) }
  public var headlineMediumRegular: Font { Font.custom("Poppins-Regular", size: FontTokens.FontSize.x15) }
  public var headlineMediumLight: Font { Font.custom("Poppins-Light", size: FontTokens.FontSize.x15) }

  // Body styles
  public var bodyLargeBold: Font { Font.custom("Poppins-Bold", size: FontTokens.FontSize.lg) }
  public var bodyMediumBold: Font { Font.custom("Poppins-Bold", size: FontTokens.FontSize.md) }
  public var bodyLargeRegular: Font { Font.custom("Poppins-Regular", size: FontTokens.FontSize.lg) }
  public var bodyMediumRegular: Font { Font.custom("Poppins-Regular", size: FontTokens.FontSize.md) }
}

public struct MontserratFonts: Sendable {
  public init() {}
  // Headline styles with weights
  public var headlineMediumBold: Font { Font.custom("Montserrat-Bold", size: FontTokens.FontSize.x15) }
  public var headlineMediumSemibold: Font { Font.custom("Montserrat-Semibold", size: FontTokens.FontSize.x15) }
  public var headlineMediumMedium: Font { Font.custom("Montserrat-Medium", size: FontTokens.FontSize.x15) }
  public var headlineMediumRegular: Font { Font.custom("Montserrat-Regular", size: FontTokens.FontSize.x15) }
  public var headlineMediumLight: Font { Font.custom("Montserrat-Light", size: FontTokens.FontSize.x15) }

  // Body styles
  public var bodyLargeBold: Font { Font.custom("Montserrat-Bold", size: FontTokens.FontSize.lg) }
  public var bodyMediumBold: Font { Font.custom("Montserrat-Bold", size: FontTokens.FontSize.md) }
  public var bodyLargeRegular: Font { Font.custom("Montserrat-Regular", size: FontTokens.FontSize.lg) }
  public var bodyMediumRegular: Font { Font.custom("Montserrat-Regular", size: FontTokens.FontSize.md) }
}

public struct InterFonts: Sendable {
  public init() {}
  // Headline styles with weights
  public var headlineMediumBold: Font { Font.custom("Inter-Bold", size: FontTokens.FontSize.x15) }
  public var headlineMediumSemibold: Font { Font.custom("Inter-Semibold", size: FontTokens.FontSize.x15) }
  public var headlineMediumMedium: Font { Font.custom("Inter-Medium", size: FontTokens.FontSize.x15) }
  public var headlineMediumRegular: Font { Font.custom("Inter-Regular", size: FontTokens.FontSize.x15) }
  public var headlineMediumLight: Font { Font.custom("Inter-Light", size: FontTokens.FontSize.x15) }

  // Body styles
  public var bodyLargeBold: Font { Font.custom("Inter-Bold", size: FontTokens.FontSize.lg) }
  public var bodyMediumBold: Font { Font.custom("Inter-Bold", size: FontTokens.FontSize.md) }
  public var bodyLargeRegular: Font { Font.custom("Inter-Regular", size: FontTokens.FontSize.lg) }
  public var bodyMediumRegular: Font { Font.custom("Inter-Regular", size: FontTokens.FontSize.md) }
}

public struct OpenSansFonts: Sendable {
  public init() {}
  // Headline styles with weights
  public var headlineMediumBold: Font { Font.custom("OpenSans-Bold", size: FontTokens.FontSize.x15) }
  public var headlineMediumSemibold: Font { Font.custom("OpenSans-Semibold", size: FontTokens.FontSize.x15) }
  public var headlineMediumMedium: Font { Font.custom("OpenSans-Medium", size: FontTokens.FontSize.x15) }
  public var headlineMediumRegular: Font { Font.custom("OpenSans-Regular", size: FontTokens.FontSize.x15) }
  public var headlineMediumLight: Font { Font.custom("OpenSans-Light", size: FontTokens.FontSize.x15) }

  // Body styles
  public var bodyLargeBold: Font { Font.custom("OpenSans-Bold", size: FontTokens.FontSize.lg) }
  public var bodyMediumBold: Font { Font.custom("OpenSans-Bold", size: FontTokens.FontSize.md) }
  public var bodyLargeRegular: Font { Font.custom("OpenSans-Regular", size: FontTokens.FontSize.lg) }
  public var bodyMediumRegular: Font { Font.custom("OpenSans-Regular", size: FontTokens.FontSize.md) }
}

public struct SystemFonts: Sendable {
  public init() {}
  // Headline styles with weights
  public var headlineMediumBold: Font { Font.system(size: FontTokens.FontSize.x15, weight: .bold) }
  public var headlineMediumSemibold: Font { Font.system(size: FontTokens.FontSize.x15, weight: .semibold) }
  public var headlineMediumMedium: Font { Font.system(size: FontTokens.FontSize.x15, weight: .medium) }
  public var headlineMediumRegular: Font { Font.system(size: FontTokens.FontSize.x15, weight: .regular) }
  public var headlineMediumLight: Font { Font.system(size: FontTokens.FontSize.x15, weight: .light) }

  // Body styles
  public var bodyLargeBold: Font { Font.system(size: FontTokens.FontSize.lg, weight: .bold) }
  public var bodyMediumBold: Font { Font.system(size: FontTokens.FontSize.md, weight: .bold) }
  public var bodyLargeRegular: Font { Font.system(size: FontTokens.FontSize.lg, weight: .regular) }
  public var bodyMediumRegular: Font { Font.system(size: FontTokens.FontSize.md, weight: .regular) }
}


// MARK: - Enhanced Typography with Multiple Font Support
public struct EnhancedTypography: Sendable {
  // MARK: - Direct Font Family Access
  public let roboto = RobotoFonts()
  public let poppins = PoppinsFonts()
  public let montserrat = MontserratFonts()
  public let inter = InterFonts()
  public let openSans = OpenSansFonts()
  public let systemFont = SystemFonts()

  public init(preferredFontFamily: AvailableFontFamily = .roboto) {

  }

  // Default font provider set in init
  private let fontProvider =  SmartFontProvider()

  // MARK: - Default Typography Styles (for backward compatibility)
  // Note: The actual implementation in the images uses fontProvider.
  // The following code simulates that structure, assuming fontProvider
  // has methods like .bold, .semibold, .medium, and .regular.

  public var displayLarge: Font {
    fontProvider.bold(size: FontTokens.FontSize.x19)
  }

  public var displayMedium: Font {
    fontProvider.bold(size: FontTokens.FontSize.x18)
  }

  public var displaySmall: Font {
    fontProvider.bold(size: FontTokens.FontSize.x17)
  }

  public var headlineLarge: Font {
    fontProvider.semibold(size: FontTokens.FontSize.x16)
  }

  public var headlineMedium: Font {
    fontProvider.semibold(size: FontTokens.FontSize.x15)
  }

  public var headlineSmall: Font {
    fontProvider.semibold(size: FontTokens.FontSize.x14)
  }

  public var titleLarge: Font {
    fontProvider.medium(size: FontTokens.FontSize.x13)
  }

  public var titleMedium: Font {
    fontProvider.medium(size: FontTokens.FontSize.x12)
  }

  public var titleSmall: Font {
    fontProvider.medium(size: FontTokens.FontSize.lg)
  }

  public var bodyLarge: Font {
    fontProvider.regular(size: FontTokens.FontSize.lg)
  }

  public var bodyMedium: Font {
    fontProvider.regular(size: FontTokens.FontSize.md)
  }

  public var bodySmall: Font {
    fontProvider.regular(size: FontTokens.FontSize.sm)
  }

  public var labelLarge: Font {
    fontProvider.medium(size: FontTokens.FontSize.sm)
  }

  public var labelMedium: Font {
    fontProvider.medium(size: FontTokens.FontSize.xs)
  }

  public var labelSmall: Font {
    fontProvider.medium(size: FontTokens.FontSize.xs)
  }
}
