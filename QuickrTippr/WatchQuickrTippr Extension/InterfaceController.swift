//
//  InterfaceController.swift
//  WatchQuickrTippr Extension
//
//  Created by Evan Mullen on 2/4/21.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override init() {
        super.init()
    }
  
    @IBOutlet weak var billField: WKInterfaceTextField!
    @IBOutlet weak var tipController: WKInterfaceSlider!
    @IBOutlet weak var tipLabel: WKInterfaceLabel!
    @IBOutlet weak var totalLabel: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
    // Configure interface objects here.
    }
    
    override func willActivate() {
        super.willActivate()
        
        // This method is called when watch view controller is about to be visible to user
    }
    
    override func didDeactivate() {
        super.didDeactivate()
        
        // This method is called when watch view controller is no longer visible
    }


    }


