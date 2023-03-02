//
//  TaskSummaryViewController.swift
//  Extinguish
//
//  Created by vansh agarwal on 19/02/23.
//

import UIKit

struct taskSummaryBasicData {
    var taskID = ""
    var priority = ""
    var location = ""
    
    
}



class TaskSummaryViewController: UIViewController ,UITableViewDataSource, UITableViewDelegate{

    
    let cellSpacingHeight: CGFloat = 5
    
    
    
    @IBOutlet var taskSummaryTable: UITableView!
    
    
    var taskSummaryBasicDatas : [taskSummaryBasicData] =
    [taskSummaryBasicData(taskID: "zxzabsd",priority: "Immediate",location: "Nungumbakam"),
     taskSummaryBasicData(taskID: "3vXrXv",priority: "Normal",location: "Chengalpet"),
     taskSummaryBasicData(taskID: "4yyy5if",priority: "Normal",location: "Triplicane"),
     taskSummaryBasicData(taskID: "dy65vko",priority: "Normal",location: "Mylapore"),
     taskSummaryBasicData(taskID: "dy65vko",priority: "Normal",location: "Mylapore"),
     taskSummaryBasicData(taskID: "dy65vko",priority: "Normal",location: "Mylapore"),
     taskSummaryBasicData(taskID: "dy65vko",priority: "Normal",location: "Mylapore"),
     taskSummaryBasicData(taskID: "dy65vko",priority: "Normal",location: "Mylapore")
     
    ]

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Task Summary"
        configureTitleTabItems()
        
        navigationController?.navigationBar.backgroundColor = UIColor(rgb: 0x0A2647)
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationController?.navigationBar.barTintColor = .white
        view.backgroundColor = UIColor(rgb: 0xFFFBEB)
    
        
        self.taskSummaryTable.dataSource = self
        self.taskSummaryTable.delegate = self
        
//        starStackView = UIStackView()
//        starStackView.translatesAutoresizingMaskIntoConstraints = false
//        starStackView.alignment = .center
//        starStackView.axis = .horizontal
//        starStackView.spacing = 5
        view.addSubview(floatingButton)
        
        // Do any additional setup after loading the view.
//        let header  = UIView(frame: CGRect(x: 0, y: 0, width: Int(view.frame.size.width), height: 50))
//        taskSummaryTable.tableHeaderView = header
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        taskSummaryTable.deselectRow(at: indexPath, animated: true)
    }
    
   
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.01
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return taskSummaryBasicDatas.count
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = taskSummaryTable.dequeueReusableCell(withIdentifier: "taskSummaryBasicCell", for: indexPath)
        let taskcell = cell as? TaskSummaryTableViewCell
        let task = taskSummaryBasicDatas[indexPath.section]
        
//        cell.layer.borderWidth = 2
        cell.backgroundColor = UIColor.white
          cell.layer.borderColor = UIColor.black.cgColor
          cell.layer.borderWidth = 1
          cell.layer.cornerRadius = 8
          cell.clipsToBounds = true
        taskcell?.taskIdLabel?.text = "Task ID :" + task.taskID
//        taskcell?.taskIdLabel?.text =  task.taskID
//        taskcell?.priorityLabel?.text = "Priority :" + task.priority
        taskcell?.priorityLabel?.text = task.priority
//        taskcell?.locationLabel?.text = "Location :" + task.location
        taskcell?.locationLabel?.text = "📍 "+task.location
        
        
        return cell
        
        
        
        
        
    }
    
    
    
    private func configureTitleTabItems(){
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "note.text"), style: .done, target: self, action: nil)
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "rectangle.portrait.and.arrow.right"), style: .done, target: self, action: nil)
       
        }
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


