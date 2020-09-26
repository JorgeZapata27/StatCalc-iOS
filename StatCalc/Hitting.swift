//
//  Hitting.swift
//  StatCalc
//
//  Created by JJ Zapata on 9/5/20.
//  Copyright © 2020 Jorge Zapata. All rights reserved.
//

import UIKit

class Hitting: UIViewController {
    
    @IBOutlet var option1 : UIView!
    @IBOutlet var option2 : UIView!
    @IBOutlet var option3 : UIView!
    @IBOutlet var option4 : UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
            
        // Setup Views
        self.setupViews()
        
        // Do any additional setup after loading the view.
    }
    
    func setupViews(){
        self.option1.layer.cornerRadius = 12
        self.option2.layer.cornerRadius = 12
        self.option3.layer.cornerRadius = 12
    }

}
