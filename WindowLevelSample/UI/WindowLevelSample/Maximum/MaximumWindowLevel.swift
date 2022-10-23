import AppKit

class MaximumWindowLevelExecutor: SampleExecutable {
    private let window: NSWindow
    private let contentViewController: NSViewController

    init() {
        window = NSPanel(
            contentRect: .centeredRect(size: NSSize(width: 300, height: 300)),
            styleMask: [.nonactivatingPanel],
            backing: .buffered,
            defer: true
        )
        window.title = "MAXIMUM LEVEl"
        window.level = NSWindow.Level(rawValue: Int(CGWindowLevelForKey(CGWindowLevelKey.maximumWindow)))
        window.isReleasedWhenClosed = false
        window.collectionBehavior = [.canJoinAllSpaces, .stationary, .fullScreenAuxiliary]
        window.backgroundColor = .clear
        contentViewController = MaximumWindowLevelViewController()
        window.contentViewController = contentViewController
    }

    func execute() {
        window.makeKeyAndOrderFront(self)
    }

    func clear() {
        window.close()
    }
}
