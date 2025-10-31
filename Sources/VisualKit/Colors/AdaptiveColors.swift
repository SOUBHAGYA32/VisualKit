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
