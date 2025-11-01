import SwiftUI

public protocol AppearanceThemes: Sendable {
  // MARK: - Core Colors
  var primaryColor: Color { get }
  var secondaryColor: Color { get }
  var accentColor: Color { get }
  var backgroundColor: Color { get }
  var surfaceColor: Color { get }
  var tabbarColor: Color { get }

  // MARK: - Text Colors
  var textColor: Color { get }
  var secondaryTextColor: Color { get }
  var descriptionTextColor: Color { get }
  var headerColor: Color { get }
  var placeholderColor: Color { get }
  var disabledTextColor: Color { get }

  // MARK: - Button Colors
  var primaryButtonColor: Color { get }
  var secondaryButtonColor: Color { get }
  var disabledButtonColor: Color { get }
  var buttonTextColor: Color { get }

  // MARK: - State Colors
  var successColor: Color { get }
  var warningColor: Color { get }
  var errorColor: Color { get }
  var infoColor: Color { get }

  // MARK: - Borders & Dividers
  var borderColor: Color { get }
  var dividerColor: Color { get }
  var shadowColor: Color { get }

  // MARK: - Card & List Backgrounds
  var cardBackgroundColor: Color { get }
  var listBackgroundColor: Color { get }

  // MARK: - Overlays
  var overlayColor: Color { get }
  var dimBackgroundColor: Color { get }
}

public struct CustomAppearance: AppearanceThemes {
  public let primaryColor: Color

  public let secondaryColor: Color

  public let accentColor: Color

  public let backgroundColor: Color

  public let surfaceColor: Color

  public let tabbarColor: Color

  public let textColor: Color

  public let secondaryTextColor: Color

  public let descriptionTextColor: Color

  public let headerColor: Color
  
  public let placeholderColor: Color
  
  public let disabledTextColor: Color
  
  public let primaryButtonColor: Color
  
  public let secondaryButtonColor: Color
  
  public let disabledButtonColor: Color
  
  public let buttonTextColor: Color
  
  public let successColor: Color
  
  public let warningColor: Color
  
  public let errorColor: Color
  
  public let infoColor: Color
  
  public let borderColor: Color
  
  public let dividerColor: Color
  
  public let shadowColor: Color
  
  public let cardBackgroundColor: Color
  
  public let listBackgroundColor: Color
  
  public let overlayColor: Color
  
  public let dimBackgroundColor: Color
  
  public init(primaryColor: Color, secondaryColor: Color, accentColor: Color, backgroundColor: Color, surfaceColor: Color, tabbarColor: Color, textColor: Color, secondaryTextColor: Color, descriptionTextColor: Color, headerColor: Color, placeholderColor: Color, disabledTextColor: Color, primaryButtonColor: Color, secondaryButtonColor: Color, disabledButtonColor: Color, buttonTextColor: Color, successColor: Color, warningColor: Color, errorColor: Color, infoColor: Color, borderColor: Color, dividerColor: Color, shadowColor: Color, cardBackgroundColor: Color, listBackgroundColor: Color, overlayColor: Color, dimBackgroundColor: Color) {
    self.primaryColor = primaryColor
    self.secondaryColor = secondaryColor
    self.accentColor = accentColor
    self.backgroundColor = backgroundColor
    self.surfaceColor = surfaceColor
    self.tabbarColor = tabbarColor
    self.textColor = textColor
    self.secondaryTextColor = secondaryTextColor
    self.descriptionTextColor = descriptionTextColor
    self.headerColor = headerColor
    self.placeholderColor = placeholderColor
    self.disabledTextColor = disabledTextColor
    self.primaryButtonColor = primaryButtonColor
    self.secondaryButtonColor = secondaryButtonColor
    self.disabledButtonColor = disabledButtonColor
    self.buttonTextColor = buttonTextColor
    self.successColor = successColor
    self.warningColor = warningColor
    self.errorColor = errorColor
    self.infoColor = infoColor
    self.borderColor = borderColor
    self.dividerColor = dividerColor
    self.shadowColor = shadowColor
    self.cardBackgroundColor = cardBackgroundColor
    self.listBackgroundColor = listBackgroundColor
    self.overlayColor = overlayColor
    self.dimBackgroundColor = dimBackgroundColor
  }

  // MARK: - Hex-based Initializer (All String Parameters)
  public init(
    primaryColor: String,
    secondaryColor: String,
    accentColor: String,
    backgroundColor: String,
    surfaceColor: String,
    tabbarColor: String,
    textColor: String,
    secondaryTextColor: String,
    descriptionTextColor: String,
    headerColor: String,
    placeholderColor: String,
    disabledTextColor: String,
    primaryButtonColor: String,
    secondaryButtonColor: String,
    disabledButtonColor: String,
    buttonTextColor: String,
    successColor: String,
    warningColor: String,
    errorColor: String,
    infoColor: String,
    borderColor: String,
    dividerColor: String,
    shadowColor: String,
    cardBackgroundColor: String,
    listBackgroundColor: String,
    overlayColor: String,
    dimBackgroundColor: String
  ) {
    self.primaryColor = Color(hex: primaryColor)
    self.secondaryColor = Color(hex: secondaryColor)
    self.accentColor = Color(hex: accentColor)
    self.backgroundColor = Color(hex: backgroundColor)
    self.surfaceColor = Color(hex: surfaceColor)
    self.tabbarColor = Color(hex: tabbarColor)
    self.textColor = Color(hex: textColor)
    self.secondaryTextColor = Color(hex: secondaryTextColor)
    self.descriptionTextColor = Color(hex: descriptionTextColor)
    self.headerColor = Color(hex: headerColor)
    self.placeholderColor = Color(hex: placeholderColor)
    self.disabledTextColor = Color(hex: disabledTextColor)
    self.primaryButtonColor = Color(hex: primaryButtonColor)
    self.secondaryButtonColor = Color(hex: secondaryButtonColor)
    self.disabledButtonColor = Color(hex: disabledButtonColor)
    self.buttonTextColor = Color(hex: buttonTextColor)
    self.successColor = Color(hex: successColor)
    self.warningColor = Color(hex: warningColor)
    self.errorColor = Color(hex: errorColor)
    self.infoColor = Color(hex: infoColor)
    self.borderColor = Color(hex: borderColor)
    self.dividerColor = Color(hex: dividerColor)
    self.shadowColor = Color(hex: shadowColor)
    self.cardBackgroundColor = Color(hex: cardBackgroundColor)
    self.listBackgroundColor = Color(hex: listBackgroundColor)
    self.overlayColor = Color(hex: overlayColor)
    self.dimBackgroundColor = Color(hex: dimBackgroundColor)
  }
}

public struct AppearanceManager: Sendable {
  public init() {}

  public static func createCustomAppearance(
    primaryColor: String,
    secondaryColor: String,
    accentColor: String,
    backgroundColor: String,
    surfaceColor: String,
    tabbarColor: String,
    textColor: String,
    secondaryTextColor: String,
    descriptionTextColor: String,
    headerColor: String,
    placeholderColor: String,
    disabledTextColor: String,
    primaryButtonColor: String,
    secondaryButtonColor: String,
    disabledButtonColor: String,
    buttonTextColor: String,
    successColor: String,
    warningColor: String,
    errorColor: String,
    infoColor: String,
    borderColor: String,
    dividerColor: String,
    shadowColor: String,
    cardBackgroundColor: String,
    listBackgroundColor: String,
    overlayColor: String,
    dimBackgroundColor: String
  ) -> CustomAppearance {

    return CustomAppearance(
      primaryColor: primaryColor,
      secondaryColor: secondaryColor,
      accentColor: accentColor,
      backgroundColor: backgroundColor,
      surfaceColor: surfaceColor,
      tabbarColor: tabbarColor,
      textColor: textColor,
      secondaryTextColor: secondaryTextColor,
      descriptionTextColor: descriptionTextColor,
      headerColor: headerColor,
      placeholderColor: placeholderColor,
      disabledTextColor: disabledTextColor,
      primaryButtonColor: primaryButtonColor,
      secondaryButtonColor: secondaryButtonColor,
      disabledButtonColor: disabledButtonColor,
      buttonTextColor: buttonTextColor,
      successColor: successColor,
      warningColor: warningColor,
      errorColor: errorColor,
      infoColor: infoColor,
      borderColor: borderColor,
      dividerColor: dividerColor,
      shadowColor: shadowColor,
      cardBackgroundColor: cardBackgroundColor,
      listBackgroundColor: listBackgroundColor,
      overlayColor: overlayColor,
      dimBackgroundColor: dimBackgroundColor
    )
  }
}
