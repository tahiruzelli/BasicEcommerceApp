//
//  ViewController.swift
//  ecommerce
//
//  Created by Tahir Uzelli on 4.03.2022.
//

import UIKit

class ViewController: UIViewController {
    var screenHeight : Double?
    var screenWidth : Double?
    var bottomPalleteWidth : Double?
    let bottomPalleteHeight : Double = 5
    @IBAction func loginButton(_ sender: Any) {
        
    
    }
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    var bottomGreenPallete = UIView()
    var bottomBluePallete = UIView()
    var bottomOrangePallete = UIView()
    var bottomRedPallete = UIView()
    var bottomPurplePallete = UIView()
    var bottomLightBluePallete = UIView()
    override func viewDidLoad() {
        super.viewDidLoad()
        screenWidth = view.frame.width
        screenHeight = view.frame.height
        bottomPalleteWidth = screenWidth! / 6

        passwordTextField.layer.cornerRadius  = 20
        emailTextField.layer.cornerRadius = 20
        
        bottomGreenPallete.backgroundColor = .green
        bottomBluePallete.backgroundColor = .blue
        bottomOrangePallete.backgroundColor = .orange
        bottomRedPallete.backgroundColor = .red
        bottomPurplePallete.backgroundColor = .purple
        bottomLightBluePallete.backgroundColor = .systemBlue
        bottomGreenPallete.frame = CGRect(x: 0, y: screenHeight! - bottomPalleteHeight, width: bottomPalleteWidth!, height: bottomPalleteHeight)
        bottomBluePallete.frame = CGRect(x: bottomPalleteWidth!, y: screenHeight! - bottomPalleteHeight, width: bottomPalleteWidth!, height: bottomPalleteHeight)
        bottomOrangePallete.frame = CGRect(x: 2 * bottomPalleteWidth!, y: screenHeight! - bottomPalleteHeight, width: bottomPalleteWidth!, height: bottomPalleteHeight)
        bottomRedPallete.frame = CGRect(x: 3 * bottomPalleteWidth!, y: screenHeight! - bottomPalleteHeight, width: bottomPalleteWidth!, height: bottomPalleteHeight)
        bottomPurplePallete.frame = CGRect(x: 4 * bottomPalleteWidth!, y: screenHeight! - bottomPalleteHeight, width: bottomPalleteWidth!, height: bottomPalleteHeight)
        bottomLightBluePallete.frame = CGRect(x: 5 * bottomPalleteWidth!, y: screenHeight! - bottomPalleteHeight, width: bottomPalleteWidth!, height: bottomPalleteHeight)
        view.addSubview(bottomGreenPallete)
        view.addSubview(bottomBluePallete)
        view.addSubview(bottomOrangePallete)
        view.addSubview(bottomRedPallete)
        view.addSubview(bottomPurplePallete)
        view.addSubview(bottomLightBluePallete)
        view.addSubview(passwordTextField)
    }
}

