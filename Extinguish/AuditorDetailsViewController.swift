//
//  AuditorDetailsViewController.swift
//  Extinguish
//
//  Created by Tanvi Gupta on 27/02/23.
//

import UIKit

class AuditorDetailsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Tanvi Gupta"
//        configureTitleTabItems()
        navigationController?.navigationBar.backgroundColor = UIColor(rgb: 0x0A2647)
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        view.backgroundColor = UIColor(rgb: 0xFFFBEB)
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    private func configureTitleTabItems(){
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "figure.stand"), style: .done, target: self, action: nil)
       
        }

}
