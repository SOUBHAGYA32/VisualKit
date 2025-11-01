import SwiftUI

public struct IconManager: Sendable {
  public init() {}

  public func icon(systemName: String) -> VKIcon {
    VKIcon(systemName: systemName)
  }

  public func icon(named: String, bundle: Bundle? = nil) -> VKIcon {
    VKIcon(named: named, bundle: bundle)
  }
}
