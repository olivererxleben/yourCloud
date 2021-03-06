//
//  AppDelegate.swift
//  yourCloud
//
//  Created by Oliver Erxleben on 03.11.14.
//  Copyright (c) 2014 Oliver Erxleben. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet var statusMenu: NSMenu?
    var statusItem: NSStatusItem? = nil
    
    func applicationDidFinishLaunching(aNotification: NSNotification?) {
        // Insert code here to initialize your application
 
    }
    
    func applicationWillTerminate(aNotification: NSNotification?) {
    
        // Insert code here to tear down your application
    }
    
    override func awakeFromNib() {
        //self.statusItem = NSStatusBar.systemStatusBar().statusItemWithLength(CGFloat(NSVariableStatusItemLength))
        self.statusItem = NSStatusBar.systemStatusBar().statusItemWithLength( -1 ) // a bug here in compiler 
        self.statusItem!.menu = self.statusMenu
        self.statusItem!.title = "yourCloud"
        self.statusItem!.highlightMode = true
        self.statusItem!.action = Selector("doSomethingWithMenuSelection")
    }
    
    @IBAction func doSomethingWithMenuSelection(sender : AnyObject) {
        println("Action pressed")
    }


}

