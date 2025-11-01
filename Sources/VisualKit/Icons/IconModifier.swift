import SwiftUI

extension Image {
  public func iconSize(_ size: CGFloat) -> some View {
    self
      .resizable()
      .aspectRatio(contentMode: .fit)
      .frame(width: size, height: size)
  }

  public func iconSizeXS() -> some View {
    iconSize(12)
  }

  public func iconSizeSM() -> some View {
    iconSize(16)
  }

  public func iconSizeMD() -> some View {
    iconSize(20)
  }

  public func iconSizeLG() -> some View {
    iconSize(24)
  }

  public func iconSizeXL() -> some View {
    iconSize(32)
  }

  public func iconSizeXXL() -> some View {
    iconSize(40)
  }

  public func iconSizeXXXL() -> some View {
    iconSize(48)
  }

  public func iconSizeXXXXL() -> some View {
    iconSize(64)
  }
}

extension VKIcon {
  public func view() -> Image {
    self.image
  }

  public func styled(
    size: CGFloat? = nil,
    color: Color? = nil,
    weight: Font.Weight = .regular
  ) -> some View {
    Group {
      if let size = size {
        image
          .iconSize(size)
      } else {
        image
      }
    }
    .foregroundColor(color)
    .font(.system(size: size ?? 16, weight: weight))
  }

  public func small(color: Color = .primary) -> some View {
    styled(size: 16, color: color)
  }

  public func medium(color: Color = .primary) -> some View {
    styled(size: 20, color: color)
  }

  public func large(color: Color = .primary) -> some View {
    styled(size: 24, color: color)
  }

  public func extraLarge(color: Color = .primary) -> some View {
    styled(size: 32, color: color)
  }
}

public struct ThemedIcon: View {
  private let icon: VKIcon
  private let size: CGFloat
  private let lightColor: Color
  private let darkColor: Color

  public init(icon: VKIcon, size: CGFloat, lightColor: Color, darkColor: Color) {
    self.icon = icon
    self.size = size
    self.lightColor = lightColor
    self.darkColor = darkColor
  }

  public var body: some View {
    icon.image
      .iconSize(size)
      .foregroundColor(colorForCurrentScheme)
  }

  @Environment(\.colorScheme) private var colorScheme

  private var colorForCurrentScheme: Color {
    colorScheme == .light ? lightColor : darkColor
  }
}
