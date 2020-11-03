//
//  AddViewController.swift
//  AdvancedToDoApp
//
//  Created by zombietux on 2020/11/03.
//  Copyright © 2020 FastCampus. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.dataSource = self
            tableView.rowHeight = 70
        }
    }
    
    let addItems = [AddItem(title: "기한 설정", thumbnail: UIImage(named: "cal") ?? UIImage()), AddItem(title: "사진 첨부", thumbnail: UIImage(named: "attach-detail") ?? UIImage())]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

extension AddViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return addItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AddCell") as! AddCell
        cell.titleLabel.text = addItems[indexPath.item].title
        cell.thumbnailImageView.image = addItems[indexPath.item].thumbnail
        
        return cell
    }
}
