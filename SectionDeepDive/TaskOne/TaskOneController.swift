//
//  TaskOneController.swift
//  SectionDeepDive
//
//  Created by Moch. Nor Kholis on 26/12/19.
//  Copyright © 2019 Moch. Nor Kholis. All rights reserved.
//

import UIKit

class TaskOneController: UIViewController {
    @IBOutlet weak var musicTableView: UITableView!
    
    let titleSection = ["Dangdut: ","Pop: ", "Rock: ", "Kroncong: "]
    
    let kroncong = ["Stasiun Balapan", "Layang Rindu", "Pantai Klayar", "Gunung merapi"]
    let dangdut = ["Hamil duluan", "Cinta satu malam", "Bang toyib"]
    let pop = ["Cinta kan membawamu", "Angin", "Cemburu", "Manusia", "Cinta langit bumi dan semua penghuninya"]
    let rock = ["one", "two", "three", "four", "five", "six"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        musicTableView.delegate = self
        musicTableView.dataSource = self
        
        self.musicTableView.rowHeight = UITableView.automaticDimension
        self.musicTableView.estimatedSectionHeaderHeight = 50
        self.musicTableView.estimatedRowHeight = 100
        
        
    }
    

}

extension TaskOneController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var rowCount = 0
        switch section {
        case 0:
            rowCount = dangdut.count
        case 1:
            rowCount = pop.count
        case 2:
            rowCount = rock.count
        case 3:
            rowCount = kroncong.count
        default:
            rowCount = 0
        }
        return rowCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let contentCell = musicTableView.dequeueReusableCell(withIdentifier: "ContentCell", for: indexPath)as! ContentMusicViewCell
        switch indexPath.section {
        case 0:
            contentCell.musicLabel.text = dangdut[indexPath.row]
        case 1:
            contentCell.musicLabel.text = pop[indexPath.row]
        case 2:
            contentCell.musicLabel.text = rock[indexPath.row]
        case 3:
            contentCell.musicLabel.text = kroncong[indexPath.row]
        default:
            contentCell.musicLabel.text = "Other"
        }
        return contentCell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return titleSection.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerCell = musicTableView.dequeueReusableCell(withIdentifier: "HeaderCell") as! HeaderMusicViewCell
        switch section {
        case 0:
            headerCell.headerMusicLabel.text = titleSection[section]
        case 1:
            headerCell.headerMusicLabel.text = titleSection[section]
        case 2:
            headerCell.headerMusicLabel.text = titleSection[section]
        case 3:
            headerCell.headerMusicLabel.text = titleSection[section]
        default:
            headerCell.headerMusicLabel.text = "Other"
        }
        return headerCell
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerCell = musicTableView.dequeueReusableCell(withIdentifier: "FooterCell")as! MusicFooterCell
        footerCell.footerLabel.text = "Hallo wowowowowowowowowowowowowowowowowowowowowowowowowowowo"
//        let rect = CGRect(origin: CGPoint(x:0, y:0), size: CGSize(width: musicTableView.frame.size.width, height: 20))
//        let footerView = UIView(frame: rect)
//        footerView.backgroundColor = .red
        return footerCell
    }
}
