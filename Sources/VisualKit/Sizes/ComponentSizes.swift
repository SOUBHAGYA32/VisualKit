//
//  ComponentSizes.swift
//  VisualKit
//
//  Created by Soubhagya on 31/10/25.
//
import SwiftUI

//MARK: - Component Sizes
public struct ComponentSizes: Sendable {
  
  // MARK: - Icon Sizes
  public let iconXS: CGFloat = SizeTokens.xs
  public let iconSM: CGFloat = SizeTokens.sm
  public let iconMD: CGFloat = SizeTokens.md
  public let iconLG: CGFloat = SizeTokens.lg
  public let iconXL: CGFloat = SizeTokens.xl
  public let iconXL2: CGFloat = SizeTokens.xl2
  public let iconXL3: CGFloat = SizeTokens.xl3

  // MARK: - Button Heights
  public let buttonHeightXS: CGFloat = 28
  public let buttonHeightSM: CGFloat = 32
  public let buttonHeightMD: CGFloat = 40
  public let buttonHeightLG: CGFloat = 48
  public let buttonHeightXL: CGFloat = 56

  // MARK: - Input Field Heights
  public let inputHeightXS: CGFloat = 32
  public let inputHeightSM: CGFloat = 36
  public let inputHeightMD: CGFloat = 44
  public let inputHeightLG: CGFloat = 52
  public let inputHeightXL: CGFloat = 60

  // MARK: - Avatar Sizes
  public let avatarXS: CGFloat = SizeTokens.md
  public let avatarSM: CGFloat = SizeTokens.lg
  public let avatarMD: CGFloat = SizeTokens.xl
  public let avatarLG: CGFloat = SizeTokens.xl2
  public let avatarXL: CGFloat = SizeTokens.xl4
  public let avatarXL2: CGFloat = SizeTokens.xl6

  // MARK: - Thumbnail Sizes
  public let thumbnailXS: CGFloat = SizeTokens.xl2
  public let thumbnailSM: CGFloat = SizeTokens.xl4
  public let thumbnailMD: CGFloat = SizeTokens.xl6
  public let thumbnailLG: CGFloat = SizeTokens.xl8
  public let thumbnailXL: CGFloat = SizeTokens.xl10

  // MARK: - Card Sizes
  public let cardMinHeight: CGFloat = SizeTokens.xl8
  public let cardMaxWidth: CGFloat = SizeTokens.xl15

  // MARK: - Modal and Sheet Sizes
  public let modalMaxWidth: CGFloat = 600
  public let modalMaxHeight: CGFloat = 600
  public let sheetCornerRadius: CGFloat = 16

  // MARK: - Navigation and Tab Sizes
  public let navigationBarHeight: CGFloat = 44
  public let tabBarHeight: CGFloat = 49
  public let toolbarHeight: CGFloat = 44

  // MARK: - Divider Sizes
  public let dividerThin: CGFloat = 1
  public let dividerMedium: CGFloat = 2
  public let dividerThick: CGFloat = 4

  public init() {}
}
