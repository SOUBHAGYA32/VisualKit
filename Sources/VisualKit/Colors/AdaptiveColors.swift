import SwiftUI

// MARK: - Adaptive Color that responds to ColorScheme
public struct AdaptiveColor {
  private let lightColor: Color
  private let darkColor: Color

  public init(light: Color, dark: Color) {
    self.lightColor = light
    self.darkColor = dark
  }

  //Function to get color for specific ColorScheme
  public func color(for colorScheme: ColorScheme) -> Color {
    colorScheme == .dark ? darkColor : lightColor
  }
}

// MARK: - Make AdaptiveColor work as a Color
extension AdaptiveColor: View {
  public var body: some View {
    ColorReader { colorScheme in
      colorScheme == .dark ? darkColor : lightColor
    }
  }
}

// MARK: - Helper to read ColorScheme
public struct ColorReader: View {
  let content: (ColorScheme) -> Color

  public var body: some View {
    Color.clear
      .background(
        GeometryReader { _ in
          EnvironmentColorReader(content: content)
        }
      )
  }
}

private struct EnvironmentColorReader: View {
  @Environment(\.colorScheme) private var colorScheme
  let content: (ColorScheme) -> Color

  var body: some View {
    content(colorScheme)
  }
}

// MARK: - Hex Color Initializer
public extension Color {
  init(hex: String) {
    var hexFormatted = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
    var int: UInt64 = 0
    Scanner(string: hexFormatted).scanHexInt64(&int)
    let a, r, g, b: UInt64
    switch hexFormatted.count {
    case 3: // RGB (12-bit)
      (a, r, g, b) = (255,
                      (int >> 8) * 17,
                      (int >> 4 & 0xF) * 17,
                      (int & 0xF) * 17)
    case 6: // RGB (24-bit)
      (a, r, g, b) = (255,
                      int >> 16,
                      int >> 8 & 0xFF,
                      int & 0xFF)
    case 8: // ARGB (32-bit)
      (a, r, g, b) = (int >> 24,
                      int >> 16 & 0xFF,
                      int >> 8 & 0xFF,
                      int & 0xFF)
    default:
      (a, r, g, b) = (255, 0, 0, 0)
    }
    self.init(
      .sRGB,
      red: Double(r) / 255,
      green: Double(g) / 255,
      blue: Double(b) / 255,
      opacity: Double(a) / 255
    )
  }
}
