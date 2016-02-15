//
//  ViewController.swift
//  MockupUI
//
//  Created by Daniel Bessonov on 2/13/16.
//  Copyright © 2016 Daniel Bessonov. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var hmwAppLabel: SpringLabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var signUpButton: SpringButton!
    @IBOutlet weak var loginButton: SpringButton!
    var counter : Int = 1
    @IBOutlet weak var forgotPassButton: SpringButton!
    
    override func viewWillAppear(animated: Bool) {
        if(counter == 1) {
            let nav = self.navigationController?.navigationBar
            nav?.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
            nav?.shadowImage = UIImage()
            nav?.translucent = true
            let textFieldFrame = CGRectMake(self.view.bounds.width / 10, self.view.bounds.height / 2 - 80, 250, 40)
            let textFieldFrame2 = CGRectMake(self.view.bounds.width / 10, self.view.bounds.height / 2 - 20, 250, 40)
            let textField = HoshiTextField(frame: textFieldFrame)
            textField.delegate = self
            textField.placeholderColor = UIColor.whiteColor()
            textField.borderActiveColor = UIColor.whiteColor()
            textField.borderInactiveColor = UIColor.whiteColor()
            textField.placeholder = "Email"
            textField.textColor = UIColor.whiteColor()
            let textField2 = HoshiTextField(frame: textFieldFrame2)
            textField2.delegate = self
            textField2.placeholderColor = UIColor.whiteColor()
            textField2.borderActiveColor = UIColor.whiteColor()
            textField2.borderInactiveColor = UIColor.whiteColor()
            textField2.placeholder = "Password"
            textField2.secureTextEntry = true
            textField2.textColor = UIColor.whiteColor()
            animateHelperLabel(self.hmwAppLabel, name: "fadeIn", delay: 0.5, duration: 2.0)
            animateHelperTextField(textField, name: "fadeIn", delay: 1.0, duration: 2.0)
            animateHelperTextField(textField2, name: "fadeIn", delay: 1.5, duration: 2.0)
            animateHelperButton(self.loginButton, name: "fadeIn", delay: 2.0, duration: 2.0)
            animateHelperButton(self.forgotPassButton, name: "fadeIn", delay: 2.5, duration: 2.0)
            animateHelperButton(self.signUpButton, name: "fadeIn", delay: 3.0, duration: 2.0)
            counter++
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
    
    
    func animateHelperLabel(object_ : SpringLabel, name: String, delay: CGFloat, duration: CGFloat) {
        object_.animation = name
        object_.delay = delay
        object_.duration = duration
        object_.animate()
    }
    
    func animateHelperButton(object_ : SpringButton, name: String, delay: CGFloat, duration: CGFloat) {
        object_.animation = name
        object_.delay = delay
        object_.duration = duration
        object_.animate()
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}

