//
//  Document.swift
//  Single Subject Design
//
//  Created by Anthony Braddick on 2/11/15.
//  Copyright (c) 2015 wpmaab. All rights reserved.
//

import Cocoa

class Document: NSPersistentDocument, NSTabViewDelegate {

    @IBOutlet weak var toolBar: NSToolbar!
    
    @IBAction func addPerson(sender: NSToolbarItem) {
    }
    
    @IBAction func addTest(sender: NSToolbarItem) {
    }
    
    @IBAction func addPhase(sender: NSToolbarItem) {
    }
    
    @IBAction func addCell(sender: NSToolbarItem) {
    }
    
    @IBAction func refresh(sender: NSToolbarItem) {
    }
    
    @IBAction func export(sender: NSToolbarItem) {
    }
    
    @IBAction func save(sender: NSToolbarItem) {
    }
    
    override init() {
        super.init()
        // Add your subclass-specific initialization here.
        
        //Testing the repository for the last time
    }
    

    override func windowControllerDidLoadNib(aController: NSWindowController) {
        super.windowControllerDidLoadNib(aController)
        // Add any code here that needs to be executed once the windowController has loaded the document's window.
        toolBar.allowsUserCustomization == false
        
        
    }

    override class func autosavesInPlace() -> Bool {
        return true
    }
    
    
    override var windowNibName: String? {
        // Returns the nib file name of the document
        // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this property and override -makeWindowControllers instead.
        return "Document"
    }

    
    
    func tabView(tabView: NSTabView, didSelectTabViewItem tabViewItem: NSTabViewItem?) {
        switch tabViewItem?.label as String!{
            case "Data":
                //reinstate visible tool bar items
                //var arr = toolBar.items
                //toolBar.items.filter { $0 }
                //toolBar.items = arr.filter { $0 % 2 == 0 }
                println("Switched to Tab 1")
            case "Graph":
                println("Switched to Tab 2")
                //remove tool bar items
            default:
                println("Something went wrong in selected tabs")
                        
            }
    }
}
