//
//  AddItem.swift
//  AdvancedToDoApp
//
//  Created by zombietux on 2020/11/03.
//  Copyright © 2020 FastCampus. All rights reserved.
//

import Foundation
import UIKit

struct AddItem {
    var title: String
    var thumbnail: UIImage
}

private extension AddItem {
    func createAddItems() -> [AddItem] {
        let dueDate: AddItem = {
            let title = "기한 설정"
            let thumbnail = UIImage(named: "cal")
            return AddItem(title: title, thumbnail: thumbnail ?? UIImage())
        }()
        let attach: AddItem = {
            let title = "사진 첨부"
            let thumbnail = UIImage(named: "attach-detail")
            return AddItem(title: title, thumbnail: thumbnail ?? UIImage())
        }()
        return [dueDate, attach]
    }
}
