import SwiftUI

#if os(iOS) || os(tvOS)
import UIKit
#elseif os(macOS)
import AppKit
#endif

public enum AvailableFontFamily: String, CaseIterable, Sendable {
  case roboto = "Roboto"
  case poppins = "Poppins"
  case montserrat = "Montserrat"
  case inter = "Inter"
  case openSans = "OpenSans"
  case system = "System"

  public var displayName: String {
    switch self {
    case .roboto:
      return "Roboto"
    case .poppins:
      return "Poppins"
    case .montserrat:
      return "Montserrat"
    case .inter:
      return "Inter"
    case .openSans:
      return "Open Sans"
    case .system:
      return "System Font"
    }
  }
}

// MARK: - Font Availability Checker
public struct FontAvailabilityChecker {
  public static func checkFontAvailability(for fontFamily: AvailableFontFamily) -> Bool {
    switch fontFamily {
    case .roboto:
      return checkRobotoFonts()
    case .poppins:
      return checkPoppinsFonts()
    case .montserrat:
      return checkMontserratFonts()
    case .inter:
      return checkInterFonts()
    case .openSans:
      return checkOpenSansFonts()
    case .system:
      return true
    }
  }

  private static func checkRobotoFonts() -> Bool {
    return checkFontFamily(fonts: [
      RobotoFontFamily.light,
      RobotoFontFamily.regular,
      RobotoFontFamily.medium,
      RobotoFontFamily.bold
    ])
  }

  private static func checkPoppinsFonts() -> Bool {
    return checkFontFamily(fonts: [
      PoppinsFontFamily.light,
      PoppinsFontFamily.regular,
      PoppinsFontFamily.medium,
      PoppinsFontFamily.semibold,
      PoppinsFontFamily.bold
    ])
  }


  private static func checkMontserratFonts() -> Bool {
    return checkFontFamily(fonts: [
      MontserratFontFamily.light,
      MontserratFontFamily.regular,
      MontserratFontFamily.semibold,
      MontserratFontFamily.bold
    ])
  }

  private static func checkInterFonts() -> Bool {
    return checkFontFamily(fonts: [
      InterFontFamily.light,
      InterFontFamily.regular,
      InterFontFamily.medium,
      InterFontFamily.semibold,
      InterFontFamily.bold
    ])
  }

  private static func checkOpenSansFonts() -> Bool {
    return checkFontFamily(fonts: [
      OpenSansFontFamily.light,
      OpenSansFontFamily.regular,
      OpenSansFontFamily.medium,
      OpenSansFontFamily.semibold,
      OpenSansFontFamily.bold
    ])
  }


  private static func checkFontFamily(fonts: [String]) -> Bool {
#if os(iOS) || os(tvOS)
    let availableFonts = fonts.compactMap { fontName in
      UIFont(name: fontName, size: 16) != nil ? fontName : nil
    }
#elseif os(macOS)
    let availableFonts = fonts.compactMap { fontName in
      NSFont(name: fontName, size: 16) != nil ? fontName : nil
    }
#else
    let availableFonts: [String] = []
#endif

    return availableFonts.count == fonts.count
  }

  // MARK: - Get All Available Font Families
  public static func getAvailableFontFamilies() -> [AvailableFontFamily] {
    return AvailableFontFamily.allCases.filter { family in
      checkFontAvailability(for: family)
    }
  }

  // MARK: - Get Primary Available Font Family
  public static func getPrimaryAvailableFontFamily() -> AvailableFontFamily {
    let availableFamilies = getAvailableFontFamilies()
    // Priority order: Inter › Poppins > Montserrat › Roboto › Open Sans › System
    let priorityOrder: [AvailableFontFamily] = [.inter, .poppins, .montserrat, .roboto, .openSans, .system]
    for family in priorityOrder {
      if availableFamilies.contains(family) {
        return family
      }
    }

    return .system
  }
}
