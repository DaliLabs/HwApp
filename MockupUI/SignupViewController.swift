//
//  SignupViewController.swift
//  MockupUI
//
//  Created by Daniel Bessonov on 2/14/16.
//  Copyright © 2016 Daniel Bessonov. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController, UITextFieldDelegate {

    var counter : Int = 1
    
    override func viewWillAppear(animated: Bool) {
        if(counter == 1)
        {
            //self.view.backgroundColor = UIColor(red: 46/255, green: 204/255, blue: 113/255, alpha: 1.0)
            let textFieldFrame = CGRectMake(self.view.bounds.width / 10, self.view.bounds.height / 2 - 80, 250, 40)
            let textFieldFrame2 = CGRectMake(self.view.bounds.width / 10, self.view.bounds.height / 2 - 20, 250, 40)
            let textFieldFrame3 = CGRectMake(self.view.bounds.width / 10, self.view.bounds.height / 2 + 40, 250, 40)
            let textField = HoshiTextField(frame: textFieldFrame)
            textField.delegate = self
            textField.placeholderColor = UIColor.whiteColor()
            textField.borderActiveColor = UIColor.whiteColor()
            textField.borderInactiveColor = UIColor.whiteColor()
            textField.placeholder = "Username"
            textField.textColor = UIColor.whiteColor()
            let textField2 = HoshiTextField(frame: textFieldFrame2)
            textField2.delegate = self
            textField2.placeholderColor = UIColor.whiteColor()
            textField2.borderActiveColor = UIColor.whiteColor()
            textField2.borderInactiveColor = UIColor.whiteColor()
            textField2.placeholder = "Email"
            textField2.textColor = UIColor.whiteColor()
            let textField3 = HoshiTextField(frame: textFieldFrame3)
            textField3.delegate = self
            textField3.placeholderColor = UIColor.whiteColor()
            textField3.borderActiveColor = UIColor.whiteColor()
            textField3.borderInactiveColor = UIColor.whiteColor()
            textField3.placeholder = "Password"
            textField3.secureTextEntry = true
            textField3.textColor = UIColor.whiteColor()
            self.view.addSubview(textField)
            self.view.addSubview(textField2)
            self.view.addSubview(textField3)
            counter++
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    func animateHelperTextField(object_ : HoshiTextField, name: String, delay: CGFloat, duration: CGFloat) {
        object_.animation = name
        object_.delay = delay
        object_.duration = duration
        self.view.addSubview(object_)
        object_.animate()
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}
