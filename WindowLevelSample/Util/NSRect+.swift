import Foundation
import AppKit

extension NSRect {
    static func centeredRect(size: NSSize) -> Self {
        guard let screenFrame = NSScreen.main?.visibleFrame else { return .zero }
        let x = (screenFrame.size.width / 2.0) - (size.width / 2.0)
        let y = (screenFrame.size.height / 2.0) - (size.height / 2.0)
        return .init(x: x, y: y, width: size.width, height: size.height)
    }

    static func rightBottomRect(size: NSSize, padding: CGFloat) -> Self {
        guard let screenFrame = NSScreen.main?.visibleFrame else { return .zero }
        let x = (screenFrame.size.width) - (size.width) - padding
        let y = padding
        return .init(x: x, y: y, width: size.width, height: size.height)
    }

    static func leftTopRect(size: NSSize, padding: CGFloat) -> Self {
        guard let screenFrame = NSScreen.main?.visibleFrame else { return .zero }
        let x = padding
        let y = (screenFrame.origin.y + screenFrame.height) - padding - size.height
        return .init(x: x, y: y, width: size.width, height: size.height)
    }

    static func overlayDock() -> Self {
        guard let visibleScreenFrame = NSScreen.main?.visibleFrame,
              let screenFrame = NSScreen.main?.frame else { return .zero }
        if screenFrame.width == visibleScreenFrame.width {
            return .init(x: 0, y: 0, width: screenFrame.width, height: visibleScreenFrame.origin.y)
        } else if screenFrame.height == visibleScreenFrame.height {
            return .init(x: 0, y: 0, width: visibleScreenFrame.origin.x, height: screenFrame.height)
        } else {
            return .zero
        }
    }

    static func fullScreen() -> Self {
        guard let screenFrame = NSScreen.main?.frame else { return .zero }
        return screenFrame
    }
}
