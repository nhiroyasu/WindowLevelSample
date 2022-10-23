//
//  DesktopIconLevelViewController.swift
//  WindowLevelSample
//
//  Created by NH on 2022/10/23.
//

import Cocoa

class DesktopIconLevelViewController: NSViewController {

    init() {
        super.init(nibName: "DesktopIconLevelViewController", bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }

    override func mouseUp(with event: NSEvent) {
        NSWorkspace.shared.open(URL(string: "https://weather.yahoo.co.jp/weather/jp/13/4410/13101.html")!)
    }
}
