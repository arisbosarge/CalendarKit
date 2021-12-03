import Foundation
import UIKit

public enum CalEventType {
    case standard
    case customized
}

public protocol EventDescriptor: AnyObject {
    var eventViewType: CalEventType {get}
    var customEventView: UIView? {get}
    func updateCustomEventView()
    
  var dateInterval: DateInterval {get set}
  var isAllDay: Bool {get}
  var text: String {get}
  var attributedText: NSAttributedString? {get}
  var lineBreakMode: NSLineBreakMode? {get}
  var font : UIFont {get}
  var color: UIColor {get}
  var textColor: UIColor {get}
  var backgroundColor: UIColor {get}
  var editedEvent: EventDescriptor? {get set}
  func makeEditable() -> Self
  func commitEditing()
}
