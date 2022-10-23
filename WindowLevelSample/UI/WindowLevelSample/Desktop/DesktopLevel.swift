import AppKit

class DesktopLevelExecutor: SampleExecutable {
    private let window: NSWindow
    private let viewController: NSViewController

    init() {
        window = NSWindow(
            contentRect: .fullScreen(),
            styleMask: [],
            backing: .buffered,
            defer: true
        )
        window.title = "DESKTOP LEVEl"
        window.level = NSWindow.Level(rawValue: Int(CGWindowLevelForKey(CGWindowLevelKey.desktopWindow)))
        window.isReleasedWhenClosed = false
        window.collectionBehavior = [.canJoinAllSpaces, .transient]
        viewController = DesktopLevelViewController()
        window.contentViewController = viewController
    }

    func execute() {
        window.makeKeyAndOrderFront(self)
    }

    func clear() {
        window.close()
    }
}
