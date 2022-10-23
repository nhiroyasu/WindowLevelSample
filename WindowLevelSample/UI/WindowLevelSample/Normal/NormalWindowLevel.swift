import Foundation
import AppKit

class NormalWindowLevelExecuter: SampleExecutable {
    private let window: NSWindow

    init() {
        window = NSWindow(
            contentRect: .centeredRect(size: NSSize(width: 300, height: 300)),
            styleMask: [.titled, .closable],
            backing: .buffered,
            defer: true
        )
        window.title = "NORMAL LEVEl"
        window.level = NSWindow.Level(rawValue: Int(CGWindowLevelForKey(CGWindowLevelKey.normalWindow)))
        window.isReleasedWhenClosed = false
    }

    func execute() {
        window.makeKeyAndOrderFront(nil)
    }

    func clear() {
        window.performClose(self)
    }
}
