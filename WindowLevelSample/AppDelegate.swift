//
//  AppDelegate.swift
//  WindowLevelSample
//
//  Created by NH on 2022/10/20.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }

    @IBAction func didTapAllClose(_ sender: Any) {
        NotificationCenter.default.post(name: .closeAll, object: nil)
    }

}

