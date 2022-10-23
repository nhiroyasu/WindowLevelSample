//
//  TornOffMenuWindowLevel.swift
//  WindowLevelSample
//
//  Created by NH on 2022/10/21.
//

import Foundation
import AppKit

class TornOffMenuWindowLevelExecuter: SampleExecutable {
    private let window: NSWindow

    init() {
        window = NSWindow(
            contentRect: .centeredRect(size: NSSize(width: 300, height: 300)),
            styleMask: [.titled, .closable],
            backing: .buffered,
            defer: true
        )
        window.title = "TORN OFF MENU LEVEL"
        window.level = NSWindow.Level(rawValue: Int(CGWindowLevelForKey(CGWindowLevelKey.tornOffMenuWindow) + 1))
        window.isReleasedWhenClosed = false
    }

    func execute() {
        window.makeKeyAndOrderFront(self)
    }

    func clear() {
        window.performClose(self)
    }
}
