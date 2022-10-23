import AppKit

class DesktopIconLevelExecutor: SampleExecutable {
    private let window: NSWindow
    private let viewController: NSViewController

    init() {
        window = NSWindow(
            contentRect: .leftTopRect(size: NSSize(width: 300, height: 150), padding: 32),
            styleMask: [],
            backing: .buffered,
            defer: true
        )
        window.title = "DESKTOP ICON LEVEl"
        window.level = NSWindow.Level(rawValue: Int(CGWindowLevelForKey(CGWindowLevelKey.desktopIconWindow) + 1))
        window.backgroundColor = .clear
        window.isReleasedWhenClosed = false
        window.collectionBehavior = [.canJoinAllSpaces, .transient]
        viewController = DesktopIconLevelViewController()
        window.contentViewController = viewController
    }

    func execute() {
        window.makeKeyAndOrderFront(self)
    }

    func clear() {
        window.close()
    }
}
