//
//  LoginScreenViewController.swift
//  Extinguish
//
//  Created by Tanvi Gupta on 01/03/23.
//

import UIKit

class LoginScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(rgb: 0xFFFBEB)
        loginButton.backgroundColor = UIColor(rgb: 0x0A2647)
        loginButton.layer.cornerRadius = 15

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var loginButton: UIButton!
   
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
