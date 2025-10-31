//
//  SpacingExtensions.swift
//  VisualKit
//
//  Created by Soubhagya on 31/10/25.
//

import SwiftUI

//MARK: - View Extensions for Easy Spacing Application
extension View {

  // MARK: - Padding Extensions
  /// Applies the SpacingTokens.xs padding to all edges.
  public func paddingXS() -> some View {
    self.padding(SpacingTokens.xs)
  }

  /// Applies the SpacingTokens.sm padding to all edges.
  public func paddingSM() -> some View {
    self.padding(SpacingTokens.sm)
  }

  /// Applies the SpacingTokens.md padding to all edges.
  public func paddingMD() -> some View {
    self.padding(SpacingTokens.md)
  }

  /// Applies the SpacingTokens.lg padding to all edges.
  public func paddingLG() -> some View {
    self.padding(SpacingTokens.lg)
  }

  /// Applies the SpacingTokens.xl padding to all edges.
  public func paddingXL() -> some View {
    self.padding(SpacingTokens.xl)
  }

  /// Applies the SpacingTokens.x12 padding to all edges.
  public func paddingXL2() -> some View {
    self.padding(SpacingTokens.x12)
  }

  /// Applies the SpacingTokens.x13 padding to all edges.
  public func paddingXL3() -> some View {
    self.padding(SpacingTokens.x13)
  }

  /// Applies the SpacingTokens.x14 padding to all edges.
  public func paddingXL4() -> some View {
    self.padding(SpacingTokens.x14)
  }

  // MARK: - Horizontal Padding Extensions

  /// Applies custom horizontal padding.
  public func paddingHorizontal(_ spacing: CGFloat) -> some View {
    self.padding(.horizontal, spacing)
  }

  /// Applies the SpacingTokens.xs padding to the horizontal edges.
  public func paddingHorizontalXS() -> some View {
    self.padding(.horizontal, SpacingTokens.xs)
  }

  /// Applies the SpacingTokens.sm padding to the horizontal edges.
  public func paddingHorizontalSM() -> some View {
    self.padding(.horizontal, SpacingTokens.sm)
  }

  /// Applies the SpacingTokens.md padding to the horizontal edges.
  public func paddingHorizontalMD() -> some View {
    self.padding(.horizontal, SpacingTokens.md)
  }

  /// Applies the SpacingTokens.lg padding to the horizontal edges.
  public func paddingHorizontalLG() -> some View {
    self.padding(.horizontal, SpacingTokens.lg)
  }

  /// Applies the SpacingTokens.xl padding to the horizontal edges.
  public func paddingHorizontalXL() -> some View {
    self.padding(.horizontal, SpacingTokens.xl)
  }

  // MARK: - Vertical Padding Extensions

  /// Applies custom vertical padding.
  public func paddingVertical(_ spacing: CGFloat) -> some View {
    self.padding(.vertical, spacing)
  }

  /// Applies the SpacingTokens.xs padding to the vertical edges.
  public func paddingVerticalXS() -> some View {
    self.padding(.vertical, SpacingTokens.xs)
  }

  /// Applies the SpacingTokens.sm padding to the vertical edges.
  public func paddingVerticalSM() -> some View {
    self.padding(.vertical, SpacingTokens.sm)
  }

  /// Applies the SpacingTokens.md padding to the vertical edges.
  public func paddingVerticalMD() -> some View {
    self.padding(.vertical, SpacingTokens.md)
  }

  /// Applies the SpacingTokens.lg padding to the vertical edges.
  public func paddingVerticalLG() -> some View {
    self.padding(.vertical, SpacingTokens.lg)
  }

  /// Applies the SpacingTokens.xl padding to the vertical edges.
  public func paddingVerticalXL() -> some View {
    self.padding(.vertical, SpacingTokens.xl)
  }

  // MARK: - Corner Radius Extensions

  /// Applies the SpacingTokens.xs corner radius.
  public func cornerRadiusXS() -> some View {
    self.clipShape(RoundedRectangle(cornerRadius: SpacingTokens.xs))
  }

  /// Applies the SpacingTokens.sm corner radius.
  public func cornerRadiusSM() -> some View {
    self.clipShape(RoundedRectangle(cornerRadius: SpacingTokens.sm))
  }

  /// Applies the SpacingTokens.md corner radius.
  public func cornerRadiusMD() -> some View {
    self.clipShape(RoundedRectangle(cornerRadius: SpacingTokens.md))
  }

  /// Applies the SpacingTokens.lg corner radius.
  public func cornerRadiusLG() -> some View {
    self.clipShape(RoundedRectangle(cornerRadius: SpacingTokens.lg))
  }

  /// Applies the SpacingTokens.xl corner radius.
  public func cornerRadiusXL() -> some View {
    self.clipShape(RoundedRectangle(cornerRadius: SpacingTokens.xl))
  }
}

/// MARK: - Spacer Extensions
extension Spacer {

  /// Creates a vertical spacer with SpacingTokens.xs height.
  public static func xs() -> some View {
    Spacer().frame(height: SpacingTokens.xs)
  }

  /// Creates a vertical spacer with SpacingTokens.sm height.
  public static func sm() -> some View {
    Spacer().frame(height: SpacingTokens.sm)
  }

  /// Creates a vertical spacer with SpacingTokens.md height.
  public static func md() -> some View {
    Spacer().frame(height: SpacingTokens.md)
  }

  /// Creates a vertical spacer with SpacingTokens.lg height.
  public static func lg() -> some View {
    Spacer().frame(height: SpacingTokens.lg)
  }

  /// Creates a vertical spacer with SpacingTokens.xl height.
  public static func xl() -> some View {
    Spacer().frame(height: SpacingTokens.xl)
  }

  /// Creates a vertical spacer with SpacingTokens.x12 height.
  public static func x12() -> some View {
    Spacer().frame(height: SpacingTokens.x12)
  }

  /// Creates a vertical spacer with SpacingTokens.x13 height.
  public static func x13() -> some View {
    Spacer().frame(height: SpacingTokens.x13)
  }

  /// Creates a vertical spacer with SpacingTokens.x14 height.
  public static func x14() -> some View {
    Spacer().frame(height: SpacingTokens.x14)
  }

  // MARK: - Horizontal Spacer

  /// Creates a horizontal spacer with custom width.
  public static func horizontalSpacer(_ width: CGFloat) -> some View {
    Spacer().frame(width: width)
  }

  /// Creates a horizontal spacer with SpacingTokens.xs width.
  public static func horizontalXS() -> some View {
    Spacer().frame(width: SpacingTokens.xs)
  }

  /// Creates a horizontal spacer with SpacingTokens.sm width.
  public static func horizontalSM() -> some View {
    Spacer().frame(width: SpacingTokens.sm)
  }

  /// Creates a horizontal spacer with SpacingTokens.md width.
  public static func horizontalMD() -> some View {
    Spacer().frame(width: SpacingTokens.md)
  }

  /// Creates a horizontal spacer with SpacingTokens.lg width.
  public static func horizontalLG() -> some View {
    Spacer().frame(width: SpacingTokens.lg)
  }

  /// Creates a horizontal spacer with SpacingTokens.xl width.
  public static func horizontalXL() -> some View {
    Spacer().frame(width: SpacingTokens.xl)
  }
}
