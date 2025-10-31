import SwiftUI

extension View {

  // MARK: - Icon Size Extensions
  public func iconSize(_ size: CGFloat) -> some View {
    self.frame(width: size, height: size)
  }

  public func iconSizeXS() -> some View {
    self.frame(width: ComponentSizes().iconXS, height: ComponentSizes().iconXS)
  }

  public func iconSizeSM() -> some View {
    self.frame(width: ComponentSizes().iconSM, height: ComponentSizes().iconSM)
  }

  public func iconSizeMD() -> some View {
    self.frame(width: ComponentSizes().iconMD, height: ComponentSizes().iconMD)
  }

  public func iconSizeLG() -> some View {
    self.frame(width: ComponentSizes().iconLG, height: ComponentSizes().iconLG)
  }

  public func iconSizeXL() -> some View {
    self.frame(width: ComponentSizes().iconXL, height: ComponentSizes().iconXL)
  }

  // MARK: - Button Size Extensions
  public func buttonSize(_ height: CGFloat) -> some View {
    self.frame(height: height)
  }

  public func buttonSizeXS() -> some View {
    self.frame(height: ComponentSizes().buttonHeightXS)
  }

  public func buttonSizeSM() -> some View {
    self.frame(height: ComponentSizes().buttonHeightSM)
  }

  public func buttonSizeMD() -> some View {
    self.frame(height: ComponentSizes().buttonHeightMD)
  }

  public func buttonSizeLG() -> some View {
    self.frame(height: ComponentSizes().buttonHeightLG)
  }

  public func buttonSizeXL() -> some View {
    self.frame(height: ComponentSizes().buttonHeightXL)
  }

  // MARK: - Avatar Size Extensions
  public func avatarSize(_ size: CGFloat) -> some View {
    self.frame(width: size, height: size).clipShape(Circle())
  }

  public func avatarSizeXS() -> some View {
    self.avatarSize(ComponentSizes().avatarXS)
  }

  public func avatarSizeSM() -> some View {
    self.avatarSize(ComponentSizes().avatarSM)
  }

  public func avatarSizeMD() -> some View {
    self.avatarSize(ComponentSizes().avatarMD)
  }

  public func avatarSizeLG() -> some View {
    self.avatarSize(ComponentSizes().avatarLG)
  }

  public func avatarSizeXL() -> some View {
    self.avatarSize(ComponentSizes().avatarXL)
  }

  // MARK: - Container Size Extensions
  public func containerWidth(_ breakpoint: CGFloat) -> some View {
    self.frame(maxWidth: breakpoint)
  }

  public func containerXS() -> some View {
    self.frame(maxWidth: LayoutSizes().containerXS)
  }

  public func containerSM() -> some View {
    self.frame(maxWidth: LayoutSizes().containerSM)
  }

  public func containerMD() -> some View {
    self.frame(maxWidth: LayoutSizes().containerMD)
  }

  public func containerLG() -> some View {
    self.frame(maxWidth: LayoutSizes().containerLG)
  }

  public func containerXL() -> some View {
    self.frame(maxWidth: LayoutSizes().containerXL)
  }

  // MARK: - Aspect Ratio Extensions
  public func aspectRatioSquare() -> some View {
    self.aspectRatio(1, contentMode: .fit)
  }

  public func aspectRatioWide() -> some View {
    self.aspectRatio(16/9, contentMode: .fit)
  }

  public func aspectRatioPortrait() -> some View {
    self.aspectRatio(3/4, contentMode: .fit)
  }
}

// MARK: - Divider Extensions
extension Divider {
  public func thickness(_ thickness: CGFloat) -> some View {
    self.frame(height: thickness)
  }

  public func thin() -> some View {
    self.frame(height: ComponentSizes().dividerThin)
  }

  public func medium() -> some View {
    self.frame(height: ComponentSizes().dividerMedium)
  }

  public func thick() -> some View {
    self.frame(height: ComponentSizes().dividerThick)
  }
}
