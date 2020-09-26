//
//  FAVG.swift
//  StatCalc
//
//  Created by JJ Zapata on 9/6/20.
//  Copyright © 2020 Jorge Zapata. All rights reserved.
//

import UIKit

class FAVG: UIViewController {
    
    @IBOutlet var bigView : UIView!
    @IBOutlet var statisticLabel : UILabel!
    
    var stat = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.statisticLabel!.text! = self.stat
        
        self.bigView.layer.cornerRadius = 32
        self.bigView.layer.maskedCorners = [
            .layerMaxXMinYCorner,
            .layerMinXMinYCorner]

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backToHome(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

}
