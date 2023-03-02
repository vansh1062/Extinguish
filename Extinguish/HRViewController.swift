//
//  HRViewController.swift
//  Extinguish
//
//  Created by Tanvi Gupta on 01/03/23.
//

import UIKit

class HRViewController: UIViewController , UITableViewDataSource , UITableViewDelegate{
   
    
    var auditorList = [ Auditor(empID: "12345", name: "Tanvi Gupta", phoneNumber: "9557146955", email: "tanvigupta129@gmail.com"),Auditor(empID: "12345", name: "Vansh Agarwal", phoneNumber: "9557146955", email: "tanvigupta129@gmail.com"),Auditor(empID: "12345", name: "Pratham Pandey", phoneNumber: "9557146955", email: "tanvigupta129@gmail.com"),Auditor(empID: "12345", name: "Thrishalini", phoneNumber: "9557146955", email: "tanvigupta129@gmail.com")]
  
  
    @IBOutlet var profilePic: UIImageView!
    
    
    @IBOutlet var auditorListTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "HR"
        configureTitleTabItems()
        navigationController?.navigationBar.backgroundColor = UIColor(rgb: 0x0A2647)
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationController?.navigationBar.barTintColor = .white
        view.backgroundColor = UIColor(rgb: 0xFFFBEB)
        self.auditorListTable.dataSource = self
        self.auditorListTable.delegate = self
        view.addSubview(floatingButton)

        // Do any additional setup after loading the view.
    }
//    profilePic.layer.cornerRadius = frame.height/2
//    profilePic.layer.masksToBounds = true
//    profilePic.layer.borderWidth = 1
//    profilePic.layer.borderColor = borderColor.cgColor
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        tableView.estimatedRowHeight = UITableView.automaticDimension
//         tableView.estimatedRowHeight = 90.0
        return 90.0
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return auditorList.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = auditorListTable.dequeueReusableCell(withIdentifier: "auditorDetail", for: indexPath)
        let cityCell = cell as? AuditorDetailTableViewCell
        let city = auditorList[indexPath.row]
        cityCell?.auditorID?.text = "ID No - " + city.empID
        cityCell?.auditorName?.text = city.name
        
        return cell
    }
    
    private func configureTitleTabItems(){
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "figure.stand"), style: .done, target: self, action: nil)
       
        }
  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    private let floatingButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
//        button.layer.masksToBounds = true
        button.layer.cornerRadius = 30
        button.backgroundColor = UIColor(rgb: 0x0A2647)
        let image = UIImage(systemName: "plus" , withConfiguration: UIImage.SymbolConfiguration(pointSize: 32, weight: .medium))
        button.setImage(image, for: .normal)
        button.tintColor = .white
        button.setTitleColor(.white, for: .normal)
        button.layer.shadowRadius = 10
        button.layer.shadowOpacity = 0.3
        return button
    }()
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        floatingButton.frame = CGRect(x: view.frame.size.width - 70, y: view.frame.size.height - 150 , width: 60, height: 60 )
        
    }
    

}
