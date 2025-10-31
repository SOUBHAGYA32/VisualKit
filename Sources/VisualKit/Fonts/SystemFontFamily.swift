//
//  SystemFontFamily.swift
//  VisualKit
//
//  Created by Soubhagya on 31/10/25.
//
import SwiftUI

// MARK: - System Font Family (Default Fallback)
public struct SystemFontFamily: FontFamily {
    public static let familyName = "System"

    public static let light = "System-Light"
    public static let regular = "System-Regular"
    public static let medium = "System-Medium"
    public static let semibold = "System-SemiBold"
    public static let bold = "System-Bold"

    // Override to always use system fonts
    public static func light(size: CGFloat) -> Font {
        return Font.system(size: size, weight: .light)
    }

    public static func regular(_ size: CGFloat) -> Font {
        return Font.system(size: size, weight: .regular)
    }

    public static func medium(size: CGFloat) -> Font {
        return Font.system(size: size, weight: .medium)
    }

    public static func semibold(size: CGFloat) -> Font {
        return Font.system(size: size, weight: .semibold)
    }

    public static func bold(size: CGFloat) -> Font {
        return Font.system(size: size, weight: .bold)
    }
}
