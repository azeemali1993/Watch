//
//  SightViewController.swift
//  Test
//
//  Created by Sunset on 2017-07-06.
//  Copyright © 2017 Sunset. All rights reserved.
//

import WatchKit
import Foundation


class SightViewController: WKInterfaceController {
    
    
    
    
    @IBOutlet var remaining: WKInterfaceLabel!
    
    @IBOutlet var tapOutlet: WKInterfaceButton!
    
    @IBOutlet var counter: WKInterfaceLabel!
    @IBOutlet var activityText: WKInterfaceLabel!
    @IBAction func tapped()
    {
        done -= 1
        counter.setText("\(done)")
        
        if(done == 0)
        {
            activitycount += 1
            done = 3
            counter.setText("\(done)")
            if(activitycount == 2)
            {
                activityText.setText("Name three things you hear")
                
            }
            else if(activitycount == 3)
            {
                activityText.setText("Name three things you feel")
                
            }
            else if (activitycount == 4)
            {
                tapOutlet.setHidden(true)
                tapOutlet.setEnabled(false)
                activityText.setText("Activity Completed")
                remaining.setHidden(true)
                counter.setHidden(true)
                
                //self.pushController(withName: "AA", context: nil)
                
            }
        }
    }
    
    var done = 3
    var activitycount = 1
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
}
