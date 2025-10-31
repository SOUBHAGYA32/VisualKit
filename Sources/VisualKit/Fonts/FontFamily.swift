import SwiftUI

public protocol FontFamily {
  static var familyName: String { get }
  static var light: String { get }
  static var regular: String { get }
  static var medium: String { get }
  static var semibold: String { get }
  static var bold: String { get }

  //Font Creation Methods
  static func light(size: CGFloat) -> Font
  static func regular(size: CGFloat) -> Font
  static func medium(size: CGFloat) -> Font
  static func semibold(size: CGFloat) -> Font
  static func bold(size: CGFloat) -> Font

  //Fallback methods
  static func lightFallback(size: CGFloat) -> Font
  static func regularFallback(size: CGFloat) -> Font
  static func mediumFallback(size: CGFloat) -> Font
  static func semiboldFallback(size: CGFloat) -> Font
  static func boldFallback(size: CGFloat) -> Font
}

//MARK: - Default Font family Implementation
extension FontFamily {
  public static func light(size: CGFloat) -> Font {
    return Font.custom(light, size: size)
  }

  public static func regular(size: CGFloat) -> Font {
    return Font.custom(regular, size: size)
  }

  public static func medium(size: CGFloat) -> Font {
    return Font.custom(medium, size: size)
  }

  public static func semibold(size: CGFloat) -> Font {
    return Font.custom(semibold, size: size)
  }

  public static func bold(size: CGFloat) -> Font {
    return Font.custom(bold, size: size)
  }

  //Default fallback implementation
  public static func lightFallback(size: CGFloat) -> Font {
    return Font.system(size: size, weight: .light)
  }

  public static func regularFallback(size: CGFloat) -> Font {
    return Font.system(size: size, weight: .regular)
  }

  public static func mediumFallback(size: CGFloat) -> Font {
    return Font.system(size: size, weight: .medium)
  }

  public static func semiboldFallback(size: CGFloat) -> Font {
    return Font.system(size: size, weight: .semibold)
  }

  public static func boldFallback(size: CGFloat) -> Font {
    return Font.system(size: size, weight: .bold)
  }
}

public enum FontWeight: String, CaseIterable {
  case light = "Light"
  case regular = "Regular"
  case medium = "Medium"
  case semibold = "Semibold"
  case bold = "Bold"

  public var systemWeight: Font.Weight {
    switch self {
    case .light:
      return .light
    case .regular:
      return .regular
    case .medium:
      return .medium
    case .semibold:
      return .semibold
    case .bold:
      return .bold
    }
  }
}
