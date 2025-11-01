import SwiftUI

//MARK: - Icon Protocol
public protocol IconProviding {
  var name: String { get }
  var bundle: Bundle? { get }
  func image() -> Image
  func uiImage() -> UIImage?
}

//MARK: - SF Symbol Icon
public struct SFIcon: IconProviding {
  public let name: String
  public let bundle: Bundle? = nil

  public init(named symbolName: String) {
    self.name = symbolName
  }

  public func image() -> Image {
    Image(systemName: name)
  }

  public func uiImage() -> UIImage? {
    UIImage(systemName: name)
  }
}

//MARK: - Custom Asset Icon
public struct AssetIcon: IconProviding {
  public let name: String
  public let bundle: Bundle?

  public init(name: String, bundle: Bundle? = nil) {
    self.name = name
    self.bundle = bundle
  }

  public func image() -> Image {
    if let bundle = bundle {
      return Image(name, bundle: bundle)
    } else {
      return Image(name)
    }
  }

  public func uiImage() -> UIImage? {
    if let bundle = bundle {
      return UIImage(named: name, in: bundle, compatibleWith: nil)
    } else {
      return UIImage(named: name)
    }
  }
}

//MARK: - VK Icon System
public struct VKIcon {
  private let icon: IconProviding

  //MARK: - SF Symbol Initilizer
  public init(systemName: String) {
    self.icon = SFIcon(named: systemName)
  }

  //MARK: - Custom Asset Initializer
  public init(named assetName: String, bundle: Bundle? = nil){
    self.icon = AssetIcon(name: assetName, bundle: bundle)
  }

  public var image: Image {
    icon.image()
  }

  public var uiImage: UIImage? {
    icon.uiImage()
  }

  public var name: String {
    icon.name
  }
}
