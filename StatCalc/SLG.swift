//
//  SLG.swift
//  StatCalc
//
//  Created by JJ Zapata on 9/6/20.
//  Copyright © 2020 Jorge Zapata. All rights reserved.
//

import UIKit

class SLG: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var textField1 : UITextField!
    @IBOutlet var textField2 : UITextField!
    @IBOutlet var textField3 : UITextField!
    @IBOutlet var textField4 : UITextField!
    @IBOutlet var textField5 : UITextField!
    
    @IBOutlet var outlineView1 : UIView!
    @IBOutlet var outlineView2 : UIView!
    @IBOutlet var outlineView3 : UIView!
    @IBOutlet var outlineView4 : UIView!
    @IBOutlet var outlineView5 : UIView!
    
    var stat = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textField1.delegate = self
        self.outlineView1.layer.cornerRadius = 10
        
        self.textField2.delegate = self
        self.outlineView2.layer.cornerRadius = 10
        
        self.textField3.delegate = self
        self.outlineView3.layer.cornerRadius = 10
        
        self.textField4.delegate = self
        self.outlineView4.layer.cornerRadius = 10
        
        self.textField5.delegate = self
        self.outlineView5.layer.cornerRadius = 10

        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return (true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if self.textField1!.text! == "" || self.textField2!.text! == "" || self.textField3!.text! == "" || self.textField4!.text! == "" || self.textField5!.text! == "" {
            print("one or more text fields were left empty")
        } else {
            let H = Float(self.textField1!.text!)!
            let W = Float(self.textField2!.text!)!
            let HBP = Float(self.textField3!.text!)!
            let AB = Float(self.textField4!.text!)!
            let SF = Float(self.textField5!.text!)!
            let OBP = (H + W + HBP) / (AB + W + HBP + SF)
            print(OBP)
            self.stat = String(OBP)
            self.textField5.resignFirstResponder()
            self.performSegue(withIdentifier: "slgA", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "slgA" {
            let secondController = segue.destination as! FAVG
            secondController.stat = self.stat
        }
    }

}



