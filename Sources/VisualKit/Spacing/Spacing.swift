//
//  Spacing.swift
//  VisualKit
//
//  Created by Soubhagya on 30/10/25.
//

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

  public init() {}
}

