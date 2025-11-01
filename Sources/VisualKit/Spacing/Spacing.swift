import SwiftUI

//MARK: - Semantic Spacing
public struct Spacing: Sendable {

  // MARK: - Component Internal Spacing
  public let buttonPaddingVertical: CGFloat = SpacingTokens.md
  public let buttonPaddingHorizontal: CGFloat = SpacingTokens.xl
  public let inputPaddingVertical: CGFloat = SpacingTokens.lg
  public let inputPaddingHorizontal: CGFloat = SpacingTokens.md
  public let cardPadding: CGFloat = SpacingTokens.x12
  public let iconSpacing: CGFloat = SpacingTokens.md

  // MARK: - Layout Spacing
  public let stackSpacingXS: CGFloat = SpacingTokens.xs
  public let stackSpacingSM: CGFloat = SpacingTokens.sm
  public let stackSpacingMD: CGFloat = SpacingTokens.md
  public let stackSpacingLG: CGFloat = SpacingTokens.lg
  public let stackSpacingXL: CGFloat = SpacingTokens.xl
  public let stackSpacingXL2: CGFloat = SpacingTokens.x12
  public let stackSpacingXL3: CGFloat = SpacingTokens.x13
  public let stackSpacingXL4: CGFloat = SpacingTokens.x14

  // MARK: - Margin/Padding Presets
  public let marginXS: CGFloat = SpacingTokens.xs
  public let marginSM: CGFloat = SpacingTokens.sm
  public let marginMD: CGFloat = SpacingTokens.md
  public let marginLG: CGFloat = SpacingTokens.lg
  public let marginXL: CGFloat = SpacingTokens.xl
  public let marginXL2: CGFloat = SpacingTokens.x12
  public let marginXL3: CGFloat = SpacingTokens.x13
  public let marginXL4: CGFloat = SpacingTokens.x14

  public let paddingXS: CGFloat = SpacingTokens.xs
  public let paddingSM: CGFloat = SpacingTokens.sm
  public let paddingMD: CGFloat = SpacingTokens.md
  public let paddingLG: CGFloat = SpacingTokens.lg
  public let paddingXL: CGFloat = SpacingTokens.xl
  public let paddingXL2: CGFloat = SpacingTokens.x12
  public let paddingXL3: CGFloat = SpacingTokens.x13
  public let paddingXL4: CGFloat = SpacingTokens.x14

  // MARK: - Screen Layout Spacing
  public let screenPaddingHorizontal: CGFloat = SpacingTokens.xl
  public let screenPaddingVertical: CGFloat = SpacingTokens.x13
  public let sectionSpacing: CGFloat = SpacingTokens.x14
  public let contentSpacing: CGFloat = SpacingTokens.x12

  // MARK: - List and Grid Spacing
  public let listItemSpacing: CGFloat = SpacingTokens.md
  public let listSectionSpacing: CGFloat = SpacingTokens.x12
  public let gridItemSpacing: CGFloat = SpacingTokens.lg
  public let gridColumnSpacing: CGFloat = SpacingTokens.xl

  // MARK: - Border and Corner Radius
  public let borderWidthThin: CGFloat = 1
  public let borderWidthMedium: CGFloat = 2
  public let borderWidthThick: CGFloat = 4

  public let cornerRadiusXS: CGFloat = 2
  public let cornerRadiusSM: CGFloat = 4
  public let cornerRadiusMD: CGFloat = 8
  public let cornerRadiusLG: CGFloat = 12
  public let cornerRadiusXL: CGFloat = 16
  public let cornerRadiusXL2: CGFloat = 20
  public let cornerRadiusXL3: CGFloat = 24
  public let cornerRadiusFull: CGFloat = 9999

  //Points Spacing
  public let pt0: CGFloat = SpacingTokens.pt0
  public let pt1: CGFloat = SpacingTokens.pt1
  public let pt2: CGFloat = SpacingTokens.pt2
  public let pt4: CGFloat = SpacingTokens.pt4
  public let pt6: CGFloat = SpacingTokens.pt6
  public let pt8: CGFloat = SpacingTokens.pt8
  public let pt10: CGFloat = SpacingTokens.pt10
  public let pt12: CGFloat = SpacingTokens.pt12
  public let pt14: CGFloat = SpacingTokens.pt14
  public let pt16: CGFloat = SpacingTokens.pt16
  public let pt20: CGFloat = SpacingTokens.pt20
  public let pt24: CGFloat = SpacingTokens.pt24
  public let pt28: CGFloat = SpacingTokens.pt28
  public let pt32: CGFloat = SpacingTokens.pt32
  public let pt40: CGFloat = SpacingTokens.pt40
  public let pt48: CGFloat = SpacingTokens.pt48
  public let pt56: CGFloat = SpacingTokens.pt56
  public let pt64: CGFloat = SpacingTokens.pt64
  public let pt80: CGFloat = SpacingTokens.pt80
  public let pt96: CGFloat = SpacingTokens.pt96
  public let pt112: CGFloat = SpacingTokens.pt112
  public let pt128: CGFloat = SpacingTokens.pt128

  public init() {}
}

