import AppKit

class CursorWindowLevelExecutor: SampleExecutable {
    private let window: NSWindow

    init() {
        window = NSWindow(
            contentRect: .centeredRect(size: NSSize(width: 300, height: 300)),
            styleMask: [.titled, .closable],
            backing: .buffered,
            defer: true
        )
        window.title = "CURSOR LEVEl"
        window.level = NSWindow.Level(rawValue: Int(CGWindowLevelForKey(CGWindowLevelKey.cursorWindow)))
        window.isReleasedWhenClosed = false
    }

    func execute() {
        window.makeKeyAndOrderFront(self)
    }

    func clear() {
        window.performClose(nil)
    }
}
