//
//  ViewController.swift
//  Extinguish
//
//  Created by vansh agarwal on 19/02/23.
//

import UIKit

class ListOfAuditorsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "HR"
        configureTitleTabItems()
        navigationController?.navigationBar.backgroundColor = UIColor(rgb: 0x0A2647)
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        // Do any additional setup after loading the view.
    }
    
//    override func loadView() {
//        let search = UISearchController(searchResultsController: nil)
//        search.obscuresBackgroundDuringPresentation = false
//        search.searchBar.placeholder = "Type something here..."
//        view.addSubview(search)
//    }
    
    private func configureTitleTabItems(){
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "figure.stand"), style: .done, target: self, action: nil)
       
        }
  


}

