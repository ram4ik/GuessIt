//
//  InterfaceController.swift
//  GuessIt WatchKit Extension
//
//  Created by Ramill Ibragimov on 30.05.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    private var timer: Timer?

    @IBOutlet weak var myLabel: WKInterfaceLabel!
    @IBOutlet weak var myButton: WKInterfaceButton!
    
    let movies = MovieModel.getMovie()
    var element: MovieModel?
    
    @IBAction func myButtonAction() {
        myLabel.setText(element?.name)
        
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 1.5, repeats: false, block: { (_) in
            self.element = self.movies.randomElement()
            self.myButton.setTitle(self.element?.emoji)
            self.myLabel.setText("")
        })
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        element = movies.randomElement()
        self.myLabel.setText("")
        self.myButton.setTitle(element?.emoji)
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
