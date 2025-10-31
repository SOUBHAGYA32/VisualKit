//  🧱 VisualKit - A Comprehensive Design System Package
//  ----------------------------------------------------
//  VisualKit is a modular and scalable design system framework for SwiftUI applications.
//  It provides a unified source of truth for your app’s visual identity — including
//  colors, typography, spacing, corner radii, and theming.
//
//  The goal of VisualKit is to promote design consistency across the app ecosystem,
//  reduce visual drift, and accelerate UI development with reusable design tokens.
//
//  ✨ Key Features
//  - Centralized access to design tokens
//  - Theming support for light/dark modes
//  - Consistent typography and layout spacing
//  - Extensible for future brand customizations

import SwiftUI

// MARK: - Public Design System

/// `VisualKitDesignSystem`
///
/// The main entry point for the VisualKit design system.
/// Provides access to a shared instance and factory methods
/// for creating themed configuration objects (e.g. `DesignSystemTheme`).
///
/// Use this to initialize or access design tokens across your SwiftUI app.

public struct VisualKitDesignSystem: Sendable {

  /// Shared singleton instance for accessing design system values.
  public static let shared = VisualKitDesignSystem()

  /// Creates a new `DesignSystemTheme` instance.
  /// - Returns: A fully configured design system theme
  ///            containing colors, typography, and spacing tokens.
  public static func createTheme() -> DesignSystemTheme {
    return DesignSystemTheme()
  }

  /// Default initializer.
  public init() {}
}
