//
//  HAVG.swift
//  StatCalc
//
//  Created by JJ Zapata on 9/6/20.
//  Copyright © 2020 Jorge Zapata. All rights reserved.
//

import UIKit

class HAVGTI: UIViewController, UITextFieldDelegate {

    @IBOutlet var textField1 : UITextField!
    @IBOutlet var textField2 : UITextField!
    
    @IBOutlet var outlineView1 : UIView!
    @IBOutlet var outlineView2 : UIView!
    
    var stat = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textField1.delegate = self
        self.outlineView1.layer.cornerRadius = 10
        
        self.textField2.delegate = self
        self.outlineView2.layer.cornerRadius = 10

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
        if self.textField1!.text! == "" || self.textField2!.text! == "" {
            print("one or more text fields were left empty")
        } else {
            let H = Float(self.textField1.text!)!
            let AB = Float(self.textField2.text!)!
            let BA = H / AB
            self.stat = String(BA)
            self.textField2.resignFirstResponder()
            self.performSegue(withIdentifier: "hittingAVG", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "hittingAVG" {
            let secondController = segue.destination as! FAVG
            secondController.stat = self.stat
        }
    }

}

