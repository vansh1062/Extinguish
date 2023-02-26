//
//  ViewController.swift
//  Extinguish
//
//  Created by vansh agarwal on 19/02/23.
//

import UIKit

class ListOfAuditorsViewController: UIViewController , UITableViewDataSource , UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return auditorList.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = auditorsTableView.dequeueReusableCell(withIdentifier: "auditorDetail", for: indexPath)
        let cityCell = cell as? AuditorDetailTableViewCell
        let city = auditorList[indexPath.row]
        cityCell?.auditorID?.text = "ID No - " + city.empID
        cityCell?.auditorName?.text = city.name
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "HR"
        configureTitleTabItems()
        navigationController?.navigationBar.backgroundColor = UIColor(rgb: 0x0A2647)
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        self.auditorsTableView.dataSource = self
        self.auditorsTableView.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet var auditorsTableView: UITableView!
    //    override func loadView() {
//        let search = UISearchController(searchResultsController: nil)
//        search.obscuresBackgroundDuringPresentation = false
//        search.searchBar.placeholder = "Type something here..."
//        view.addSubview(search)
//    }
    
    private func configureTitleTabItems(){
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "figure.stand"), style: .done, target: self, action: nil)
       
        }
    var auditorList = [ Auditor(empID: "12345", name: "Tanvi Gupta", phoneNumber: "9557146955", email: "tanvigupta129@gmail.com"),Auditor(empID: "12345", name: "Vansh Agarwal", phoneNumber: "9557146955", email: "tanvigupta129@gmail.com"),Auditor(empID: "12345", name: "Pratham Pandey", phoneNumber: "9557146955", email: "tanvigupta129@gmail.com"),Auditor(empID: "12345", name: "Trishalini", phoneNumber: "9557146955", email: "tanvigupta129@gmail.com")]
  


}

