//
//  Document.swift
//  Single Subject Design
//
//  Created by Anthony Braddick on 2/11/15.
//  Copyright (c) 2015 wpmaab. All rights reserved.
//

import Cocoa

class Document: NSPersistentDocument, NSTabViewDelegate {

    @IBOutlet weak var ToolBar: NSToolbar!
    
    @IBAction func AddPerson(sender: NSToolbarItem) {
    }
    
    @IBAction func AddTest(sender: NSToolbarItem) {
    }
    
    @IBAction func AddPhase(sender: NSToolbarItem) {
    }
    
    @IBAction func AddCell(sender: NSToolbarItem) {
    }
    
    @IBAction func Refresh(sender: NSToolbarItem) {
    }
    
    @IBAction func Sort(sender: NSToolbarItem) {
    }
    
    @IBAction func Export(sender: NSToolbarItem) {
    }
    
    @IBAction func Save(sender: NSToolbarItem) {
    }
    
    override init() {
        super.init()
        // Add your subclass-specific initialization here.
        
        //Testing the repository for the last time
    }
    

    override func windowControllerDidLoadNib(aController: NSWindowController) {
        super.windowControllerDidLoadNib(aController)
        // Add any code here that needs to be executed once the windowController has loaded the document's window.
        ToolBar.allowsUserCustomization == false
        
        
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
                println("Switched to Tab 1")
            case "Graph":
                println("Switched to Tab 2")
                //remove tool bar items
            default:
                println("Something went wrong in selected tabs")
                        
            }
    }
}
