import SwiftUI

// MARK: - Smart Font Provider
public struct SmartFontProvider: Sendable {
  private let selectedFontFamily: AvailableFontFamily
  
  public init(preferredFontFamily: AvailableFontFamily = .roboto) {
    if FontAvailabilityChecker.checkFontAvailability(for: preferredFontFamily) {
      self.selectedFontFamily = preferredFontFamily
    } else {
      self.selectedFontFamily = FontAvailabilityChecker.getPrimaryAvailableFontFamily()
    }
  }

  // MARK: - Font Creation Methods
  public func light(size: CGFloat) -> Font {
    return createFont(weight: .light, size: size)
  }

  public func regular(size: CGFloat) -> Font {
    return createFont(weight: .regular, size: size)
  }

  public func medium(size: CGFloat) -> Font {
    return createFont(weight: .medium, size: size)
  }

  public func semibold(size: CGFloat) -> Font {
    return createFont(weight: .semibold, size: size)
  }

  public func bold(size: CGFloat) -> Font {
    return createFont(weight: .bold, size: size)
  }

  // MARK: - Internal Font Creation
  private func createFont(weight: FontWeight, size: CGFloat) -> Font {
    switch selectedFontFamily {
    case .roboto:
      return createRobotoFont(weight: weight, size: size)
    case .poppins:
      return createPoppinsFont(weight: weight, size: size)
    case .montserrat:
      return createMontserratFont(weight: weight, size: size)
    case .inter:
      return createInterFont(weight: weight, size: size)
    case .openSans:
      return createOpenSansFont(weight: weight, size: size)
    case .system:
      return Font.system(size: size, weight: weight.systemWeight)
    }
  }

  private func createRobotoFont(weight: FontWeight, size: CGFloat) -> Font {
    switch weight {
    case .light: return RobotoFontFamily.light(size: size)
    case .regular: return RobotoFontFamily.regular(size: size)
    case .medium: return RobotoFontFamily.medium(size: size)
    case .semibold: return RobotoFontFamily.semibold(size: size)
    case .bold: return RobotoFontFamily.bold(size: size)
    }
  }

  private func createPoppinsFont(weight: FontWeight, size: CGFloat) -> Font {
    switch weight {
    case .light: return PoppinsFontFamily.light(size: size)
    case .regular: return PoppinsFontFamily.regular(size: size)
    case .medium: return PoppinsFontFamily.medium(size: size)
    case .semibold: return PoppinsFontFamily.semibold(size: size)
    case .bold: return PoppinsFontFamily.bold(size: size)
    }
  }

  private func createMontserratFont(weight: FontWeight, size: CGFloat) -> Font {
    switch weight {
    case .light: return MontserratFontFamily.light(size: size)
    case .regular: return MontserratFontFamily.regular(size: size)
    case .medium: return MontserratFontFamily.medium(size: size)
    case .semibold: return MontserratFontFamily.semibold(size: size)
    case .bold: return MontserratFontFamily.bold(size: size)
    }
  }

  private func createInterFont(weight: FontWeight, size: CGFloat) -> Font {
    switch weight {
    case .light: return InterFontFamily.light(size: size)
    case .regular: return InterFontFamily.regular(size: size)
    case .medium: return InterFontFamily.medium(size: size)
    case .semibold: return InterFontFamily.semibold(size: size)
    case .bold: return InterFontFamily.bold(size: size)
    }
  }

  private func createOpenSansFont(weight: FontWeight, size: CGFloat) -> Font {
    switch weight {
    case .light: return OpenSansFontFamily.light(size: size)
    case .regular: return OpenSansFontFamily.regular(size: size)
    case .medium: return OpenSansFontFamily.medium(size: size)
    case .semibold: return OpenSansFontFamily.semibold(size: size)
    case .bold: return OpenSansFontFamily.bold(size: size)
    }
  }

  // MARK: - Current Font Family Info
  public var currentFontFamily: AvailableFontFamily {
    return selectedFontFamily
  }

  public var currentFontFamilyName: String {
    return selectedFontFamily.displayName
  }

  // MARK: - Font Provider Factory
  public struct FontProviderFactory {
    public static func createProvider(for fontFamily: AvailableFontFamily) -> SmartFontProvider {
      return SmartFontProvider(preferredFontFamily: fontFamily)
    }

    public static func createRobotoProvider() -> SmartFontProvider {
      return SmartFontProvider(preferredFontFamily: .roboto)
    }

    public static func createPoppinsProvider() -> SmartFontProvider {
      return SmartFontProvider(preferredFontFamily: .poppins)
    }
    
    public static func createMontserratProvider() -> SmartFontProvider {
      return SmartFontProvider(preferredFontFamily: .montserrat)
    }

    public static func createInterProvider() -> SmartFontProvider {
      return SmartFontProvider(preferredFontFamily: .inter)
    }

    public static func createOpenSansProvider() -> SmartFontProvider {
      return SmartFontProvider(preferredFontFamily: .openSans)
    }

    public static func createSystemProvider() -> SmartFontProvider {
      return SmartFontProvider(preferredFontFamily: .system)
    }
  }
}
