//
//  ViewController.swift
//  StatCalc
//
//  Created by JJ Zapata on 8/31/20.
//  Copyright © 2020 Jorge Zapata. All rights reserved.
//

import UIKit

class Home: UIViewController {
    
    @IBOutlet var redView : UIView!
    
    @IBOutlet var textTitleView : UIView!
    @IBOutlet var textTitle : UILabel!
    
    @IBOutlet var option1 : UIView!
    @IBOutlet var option2 : UIView!
    @IBOutlet var option3 : UIView!
    
    @IBOutlet var imageView1 : UIView!
    @IBOutlet var imageView2 : UIView!
    @IBOutlet var imageView3 : UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup Views
        self.setupViews()
        
        // Do any additional setup after loading the view.
    }
    
    func setupViews(){
        self.redView.layer.cornerRadius = 60
        self.redView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        self.textTitleView.layer.cornerRadius = 12
        
        self.option1.layer.cornerRadius = 12
        self.option2.layer.cornerRadius = 12
        self.option3.layer.cornerRadius = 12
        
        self.imageView1.layer.cornerRadius = 12
        self.imageView2.layer.cornerRadius = 12
        self.imageView3.layer.cornerRadius = 12
    }

}

