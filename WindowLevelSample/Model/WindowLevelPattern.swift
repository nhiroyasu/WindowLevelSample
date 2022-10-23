import Foundation
import AppKit

enum WindowLevelPattern {
    case normal
    case tornOffMenu
    case floating
    case dock
    case cursor
    case maximum
    case desktopIcon
    case desktop

    var displayString: String {
        switch self {
        case .normal:
            return "Normal"
        case .tornOffMenu:
            return "tornOffMenu"
        case .floating:
            return "Floating"
        case .dock:
            return "Dock"
        case .cursor:
            return "Cursor"
        case .maximum:
            return "Maximum"
        case .desktopIcon:
            return "DesktopIcon"
        case .desktop:
            return "Desktop"
        }
    }

    var levelColor: NSColor {
        switch self {
        case .normal:
            return .textColor
        case .tornOffMenu:
            return .blue
        case .floating:
            return .systemBlue
        case .dock:
            return .systemOrange
        case .cursor:
            return .systemPink
        case .maximum:
            return .systemRed
        case .desktopIcon:
            return .systemPurple
        case .desktop:
            return .systemTeal
        }
    }
}
