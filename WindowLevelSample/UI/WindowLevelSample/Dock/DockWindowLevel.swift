import AppKit

class DockWindowLevelExecuter: SampleExecutable {
    private let window: NSWindow
    private let contentVC: NSViewController

    init() {
        window = NSWindow(
            contentRect: .overlayDock(),
            styleMask: [],
            backing: .buffered,
            defer: true
        )
        window.title = "DOCK LEVEL"
        window.collectionBehavior = [.stationary]
        window.level = NSWindow.Level(rawValue: Int(CGWindowLevelForKey(CGWindowLevelKey.dockWindow) + 1))
        window.isReleasedWhenClosed = false
        contentVC = DockWindowLevelViewController(frame: .overlayDock())
        window.contentViewController = contentVC
    }

    func execute() {
        window.makeKeyAndOrderFront(self)
    }

    func clear() {
        window.close()
    }
}
