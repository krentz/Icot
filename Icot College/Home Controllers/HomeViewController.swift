//
//  ViewController.swift
//  Icot College
//
//  Created by Rafael Krentz Gonçalves on 4/25/20.
//  Copyright © 2020 krentz. All rights reserved.
//

import UIKit

enum HomeSections {
    case headerBanner
    case toStudent // attendence(gráfico com o quanto mais pode ou n faltars), vaccations,request form, refund form, importante dates, external exams, policies, adminission criteria
    case noStudent // quem somos, prices(cursos), videos, docs infos(student life), services(accomodation...),
    case newArrivals
    case contact
}

class HomeViewController: BaseViewController {

    @IBOutlet weak var notificationBartButtonItem: UIBarButtonItem!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var headerSubview: UIView!
    
    var sections : [HomeSections] = []
    var studentList: [StudentMenuItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        baseInit()
    }
    
    func baseInit(){
        notificationBartButtonItem.tintColor = .white
        DispatchQueue.main.async {
            self.notificationBartButtonItem.addBadge(number: 2)
        }
        headerSubview.backgroundColor = .clear
        tableView.backgroundColor = .clear
        
        tableView.tableFooterView = UIView(frame: .zero)
        
        studentList = [StudentMenuItem(title: "Important dates Important dates", image: "kk"),
                       StudentMenuItem(title: "Teste 2", image: "ss"),
                       StudentMenuItem(title: "Teste 3", image: "ss"),
                       StudentMenuItem(title: "Teste 4", image: "ss")]
        
        sections = [
            HomeSections.toStudent,
            HomeSections.toStudent,
            HomeSections.toStudent,
            HomeSections.toStudent,
            HomeSections.toStudent
        ]
        
        tableView.register(StudentTableViewCell.nib, forCellReuseIdentifier: StudentTableViewCell.identifier)
       
        self.tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        
       // self.navigationItem.title = "Home"
        //navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.reloadData()
        
    }

}


extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let section = sections[section]
        switch section {
        case .toStudent:
            return 1
        case .headerBanner:
            return 1
        case .noStudent:
            return 1
        case .newArrivals:
            return 1
        case .contact:
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let section = sections[indexPath.section]
        
        switch section {
         case .toStudent:
            let cell = tableView.dequeueReusableCell(withIdentifier: StudentTableViewCell.identifier, for: indexPath) as! StudentTableViewCell
            cell.studentList = studentList
            cell.delegate = self
            return cell
        case .headerBanner:
            let cell = tableView.dequeueReusableCell(withIdentifier: StudentTableViewCell.identifier, for: indexPath) as! StudentTableViewCell
            //cell.makeupList = makeupList
            cell.delegate = self
            return cell
        case .noStudent:
            let cell = tableView.dequeueReusableCell(withIdentifier: StudentTableViewCell.identifier, for: indexPath) as! StudentTableViewCell
            //cell.makeupList = makeupList
            cell.delegate = self
            return cell
        case .newArrivals:
            let cell = tableView.dequeueReusableCell(withIdentifier: StudentTableViewCell.identifier, for: indexPath) as! StudentTableViewCell
            //cell.makeupList = makeupList
            cell.delegate = self
            return cell
        case .contact:
            let cell = tableView.dequeueReusableCell(withIdentifier: StudentTableViewCell.identifier, for: indexPath) as! StudentTableViewCell
            //cell.makeupList = makeupList
            cell.delegate = self
            return cell
        }
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let section = sections[indexPath.section]
        
        switch section {
        case .toStudent:
            return 216
        default:
            return 216
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let section = sections[section]
        let myLabel = UILabel()
        myLabel.frame = CGRect(x: 16, y: 0, width: 320, height: 20)
        myLabel.font = UIFont.boldSystemFont(ofSize: 24)
        
        let headerView = UIView()
        headerView.addSubview(myLabel)
        
        switch section {
        case .toStudent:
            myLabel.text = "Estudante"
            myLabel.textColor = .white
            return headerView
        default:
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
    
}

extension HomeViewController: StudentTableViewCellDelegate {
    func studentTableViewCell(_ cell: StudentTableViewCell, didTap item: StudentMenuItem) {
        //chosenMakeup = item
    }
    
    
}
