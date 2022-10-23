import Foundation
import AppKit

class FloatingWindowLevelExecuter: SampleExecutable {
    private let window: NSWindow

    init() {
        window = NSWindow(
            contentRect: .rightBottomRect(size: NSSize(width: 480, height: 270), padding: 32),
            styleMask: [.titled, .closable],
            backing: .buffered,
            defer: true
        )
        window.title = "FLOATING LEVEL"
        window.level = NSWindow.Level(rawValue: Int(CGWindowLevelForKey(CGWindowLevelKey.floatingWindow)))
        window.isReleasedWhenClosed = false
        window.contentView = FloatingWindowLevelView()
    }

    func execute() {
        window.makeKeyAndOrderFront(nil)
    }

    func clear() {
        window.performClose(self)
    }
}
