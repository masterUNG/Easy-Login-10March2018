//
//  ViewController.swift
//  Easy Login
//
//  Created by MasterUNG on 10/3/2561 BE.
//  Copyright © 2561 MasterUNG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    Explicit
    var userString: String = ""
    var passwordString: String = ""
    var resultString = ""
    var factorInt: Int = 1
    let constant = 9
    var answerInt = 0
    let officeDict = ["user1":"1111", "user2":"2222"]
    let dialogString = ["", "User False", "Password False", "Welcome"]
    var answerString = ""
    var crossString = "X"
    var turnLine = "\n"
    
    
    
    

    @IBOutlet weak var answerLabel: UILabel!
    
    @IBOutlet weak var showLabel: UILabel!
    
    @IBOutlet weak var userTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    @IBAction func loginButton(_ sender: Any) {
        
//        Get Value From TextField
        userString = userTextField.text!
        passwordString = passwordTextField.text!
        
        print("User ==> \(userString)")
        print("Password ==> \(passwordString)")
        
        
        
        if let testUser = officeDict[userString] {
            resultString = testUser
        } else {
            showLabel.text = dialogString[1]
        }
        
        
        print("Result ==> \(resultString)")
        
        if (resultString == passwordString) {
//            Authen True
            showLabel.text = dialogString[3]
            
            while (factorInt <= 12) {
                answerInt = constant * factorInt
                answerString = answerString + String(constant) + crossString + String(factorInt) + "=" + String(answerInt) + turnLine
                
                
                print("answerString ==> \(answerString)")
                
                factorInt += 1
            }
            
            answerLabel.text = answerString
            
        } else {
//            Password False
            showLabel.text = dialogString[2]
        }
        
        
        
    }   // loginButton
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

