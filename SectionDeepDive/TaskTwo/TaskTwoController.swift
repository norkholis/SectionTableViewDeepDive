//
//  TaskTwoController.swift
//  SectionDeepDive
//
//  Created by Moch. Nor Kholis on 27/12/19.
//  Copyright © 2019 Moch. Nor Kholis. All rights reserved.
//

import UIKit

class TaskTwoController: UIViewController {
    @IBOutlet weak var taskTwoTable: UITableView!
    
    let titleSection = ["Makanan: ","Minuman: ", "Cemilan: ", "Aksesoris: ", "Apparel: "]
    let makanan = ["Lontong balap", "Nasi goreng", "Nasi krawu", "Nasi Pecel", "Nasi rawon"]
    let minuman = ["Kopi Susu", "Milk Shake", "Kopi item", "Teh sisri", "Marimas mangga", "Wedang Uwuwuwu"]
    let cemilan = ["Kentang Goreng", "Cireng", "Bakso", "Milor"]
    let aksesoris = ["Pin", "Ganci", "Topi", "Belt"]
    let apparel = ["Tas", "Sepatu", "Celana", "Kaos"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        taskTwoTable.delegate = self
        taskTwoTable.dataSource = self
    }
    

}

extension TaskTwoController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var count = 0
        switch section {
        case 0:
            count = makanan.count
        case 1:
            count = minuman.count
        case 2:
            count = cemilan.count
        case 3:
            count = aksesoris.count
        case 4:
            count = apparel.count
        default:
            count = 0
        }
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = taskTwoTable.dequeueReusableCell(withIdentifier: "MenuCell", for: indexPath)as! ContentMenuCellTableViewCell
        switch indexPath.section {
        case 0:
            cell.contentMenuCellLabel.text = makanan[indexPath.row]
        case 1:
            cell.contentMenuCellLabel.text = minuman[indexPath.row]
        case 2:
            cell.contentMenuCellLabel.text = cemilan[indexPath.row]
        case 3:
            cell.contentMenuCellLabel.text = aksesoris[indexPath.row]
        case 4:
            cell.contentMenuCellLabel.text = apparel[indexPath.row]
        default:
            cell.contentMenuCellLabel.text = "Other"
        }
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return titleSection.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return titleSection[section]
    }
    
}
