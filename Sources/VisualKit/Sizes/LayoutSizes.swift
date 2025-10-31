import SwiftUI

//MARK: - Layout Sizes
public struct LayoutSizes: Sendable {

  // MARK: - Container Widths
  public let containerXS: CGFloat = Breakpoints.sm
  public let containerSM: CGFloat = Breakpoints.md
  public let containerMD: CGFloat = Breakpoints.md - 32
  public let containerLG: CGFloat = Breakpoints.lg - 64
  public let containerXL: CGFloat = Breakpoints.xl - 128
  public let containerFull: CGFloat = .infinity

  // MARK: - Grid Columns
  public let gridColumns2: Int = 2
  public let gridColumns3: Int = 3
  public let gridColumns4: Int = 4
  public let gridColumns6: Int = 6
  public let gridColumns12: Int = 12

  // MARK: - Sidebar Widths
  public let sidebarCollapsed: CGFloat = 64
  public let sidebarExpanded: CGFloat = 240
  public let sidebarWide: CGFloat = 320

  public init() {}
}

