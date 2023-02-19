//
//  ViewController.swift
//  Extinguish
//
//  Created by vansh agarwal on 19/02/23.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
                
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTap(_ sender: Any) {
        tabBarLoad()

    }
    
    @objc func tabBarLoad(){
        let tabBarController = UITabBarController()
        let listOfAuditorVC =  UINavigationController(rootViewController: ListOfAuditorsViewController())
        let taskSummaryVC = UINavigationController(rootViewController: TaskSummaryViewController())
        listOfAuditorVC.title = "List of Auditors"
        taskSummaryVC.title = "Task Summary"
        let controllers = [listOfAuditorVC,taskSummaryVC]
        tabBarController.setViewControllers(controllers, animated: false)
        tabBarController.modalPresentationStyle = .fullScreen
        present(tabBarController,animated:  true)
    }
    


}

