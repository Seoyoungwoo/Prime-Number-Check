//
//  ViewController.swift
//  Prime Number Check
//
//  Created by D7703_17 on 2018. 3. 29..
//  Copyright © 2018년 D7703_17. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
      

      @IBOutlet weak var label: UILabel!
      @IBOutlet weak var txtField: UITextField!
      override func viewDidLoad() {
            super.viewDidLoad()
            txtField.delegate = self
            // Do any additional setup after loading the view, typically from a nib.
      }

      @IBAction func Btcheck(_ sender: Any) {
            let Number=Int(txtField.text!)
            var Prime = true
            
            if Number == 1 {
                  Prime = false
            }
            if Number != 1 && Number != 2 {
                  
                  for i in 2 ..< Number! {
                        if Number! % i == 0 {
                              Prime = false
                        }
                  }
            }
            if Prime == true {
                  label.text = "Prime Number"
            }
            else{
                  label.text = "Not Prime Number"
            }
            
            
      }
      @IBAction func BtReset(_ sender: Any) {
            txtField.text = ""
            label.text = ""
      }
     
      override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
      }
      
      func textFieldShouldReturn(_ textField: UITextField) -> Bool // called when 'return' key pressed. return NO to ignore.
      {
            view.endEditing(false)
            return true
      }
      override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            view.endEditing(false)
      }
      
      
}
