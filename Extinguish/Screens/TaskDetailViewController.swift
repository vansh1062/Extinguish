//
//  TaskDetailViewController.swift
//  Extinguish
//
//  Created by Tanvi Gupta on 02/03/23.
//

import UIKit

class TaskDetailViewController: UIViewController {

    
    @IBOutlet var taskIdView: UIView!
    
    @IBOutlet var listOfsubtaskView: UIView!
    
    @IBOutlet var taskDetailsView: UIView!
    
    @IBOutlet var seeAvailableAuditorsView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        taskIdView.corners(_radius: 15)
        taskIdView.layer.borderColor = UIColor.black.cgColor
        taskIdView.layer.borderWidth = 1
//        taskIdView.layer.shadowRadius = CGFloat(5)
//        taskIdView.shadow(radius: 5 ,color: .black , offset: CGSize(width:15,height: 15 ),opacity: 0.5 )
        
        
        
        listOfsubtaskView.corners(_radius: 15)
        listOfsubtaskView.layer.borderColor = UIColor.black.cgColor
        listOfsubtaskView.layer.borderWidth = 1
        
        
        
        taskDetailsView.corners(_radius: 15)
        taskDetailsView.layer.borderColor = UIColor.black.cgColor
        taskDetailsView.layer.borderWidth = 1
        
        
        
        seeAvailableAuditorsView.corners(_radius: 15)
        seeAvailableAuditorsView.layer.borderColor = UIColor.black.cgColor
        seeAvailableAuditorsView.layer.borderWidth = 1
        

        
        
    }
    
    
    

}

