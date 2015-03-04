//
//  Document.swift
//  Single Subject Design
//
//  Created by Anthony Braddick on 2/11/15.
//  Copyright (c) 2015 wpmaab. All rights reserved.
//

import Cocoa

class Document: NSPersistentDocument, NSTabViewDelegate {
    
    var rememberToolItems = [NSToolbarItem]()
    var toolBarIDs = ["addPerson","addTest","addPhase","addCell","refresh","export","save"]
    
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
        rememberToolItems = toolBar.visibleItems! as [NSToolbarItem]
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
            
            
            
            
            //Filter doesn't work, remove object at index __ is our only choice for removal
            //Can only add using insert item with string identifier
            //Should we make an identifier for all tools we've made?
            
            
            
            
            case "Data":
                //reinstate visible tool bar items
                println("Switched to Tab 1")
                //toolBar.visibleItems!.filter {$0.tag() == 2}
            
            
//                for(var i=0; i<toolBar.items.count; i++) {
//                    if toolBar.items[i].tag() == 2 {
//                        toolBar.removeItemAtIndex(i)
//                    }
//                }
            
            case "Graph":
                //remove tool bar items
                
//                for(var i=0; i<toolBarIDs.count; i++) {
//                    toolBar.insertItemWithItemIdentifier(toolBarIDs[i], atIndex: i+2)
//                }
                println("Switched to Tab 2")
            
            
                //toolBar.visi = rememberToolItems
                //toolBar.visibleItems!.filter {$0.tag() != 2}
            
            default:
                println("Something went wrong in selected tabs")
                
            }
    }
}
