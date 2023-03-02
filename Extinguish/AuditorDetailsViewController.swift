//
//  AuditorDetailsViewController.swift
//  Extinguish
//
//  Created by Tanvi Gupta on 27/02/23.
//

import UIKit

class AuditorDetailsViewController: UIViewController {

    
    @IBOutlet var employeeId: UIView!
    
    @IBOutlet var contactNo: UIView!
    
    @IBOutlet var emailId: UIView!
    
    
    @IBOutlet var tasksAssignedView: UIView!
    
    @IBOutlet var locationView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Tanvi Gupta"
//        configureTitleTabItems()
        navigationController?.navigationBar.backgroundColor = UIColor(rgb: 0x0A2647)
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        view.backgroundColor = UIColor(rgb: 0xFFFBEB)
        

        employeeId.corners(_radius: 15)
        employeeId.layer.borderColor = UIColor.black.cgColor
        employeeId.layer.borderWidth = 1
        
        
        contactNo.corners(_radius: 15)
        contactNo.layer.borderColor = UIColor.black.cgColor
        contactNo.layer.borderWidth = 1
        
        
        emailId.corners(_radius: 15)
        emailId.layer.borderColor = UIColor.black.cgColor
        emailId.layer.borderWidth = 1
        
        
        tasksAssignedView.corners(_radius: 15)
        tasksAssignedView.layer.borderColor = UIColor.black.cgColor
        tasksAssignedView.layer.borderWidth = 1
        
        locationView.corners(_radius: 15)
        
        
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

//extension UIView {
//    @discardableResult
//    func corners( _radius:CGFloat ) -> UIView {
//        self.layer.cornerRadius = _radius
//        clipsToBounds = true
//        self.layer.masksToBounds = true
//        return self
//    }
//    
//}
