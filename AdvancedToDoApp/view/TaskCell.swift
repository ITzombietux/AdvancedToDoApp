//
//  TodoCell.swift
//  AdvancedToDoApp
//
//  Created by zombietux on 2020/10/28.
//  Copyright © 2020 FastCampus. All rights reserved.
//

import UIKit

class TaskCell: UITableViewCell {
    var taskResult: Task! {
        didSet {
            noteTitleLabel.text = taskResult.note
            createdAtLabel.text = "\(taskResult.createdAt)"
        }
    }

    @IBOutlet weak var cardBackgroundView: UIView! {
        didSet {
            let cornerRadius: CGFloat = 30
               
            cardBackgroundView.layer.cornerRadius = cornerRadius
            if #available(iOS 13.0, *) {
                cardBackgroundView.layer.shadowColor = UIColor.systemGray4.cgColor
            } else { }
            cardBackgroundView.layer.shadowOffset = CGSize(width: 3.0, height: 3.0)
            cardBackgroundView.layer.shadowRadius = 5
            cardBackgroundView.layer.shadowOpacity = 0.5
            cardBackgroundView.layer.masksToBounds = false
            if #available(iOS 13.0, *) {
                cardBackgroundView.layer.shadowColor = UIColor.systemGray4.cgColor
            } else { }
        }
    }
    @IBOutlet weak var noteTitleLabel: UILabel!
    @IBOutlet weak var createdAtLabel: UILabel!
    @IBOutlet weak var additionalImages: UIImageView!
    @IBOutlet weak var isFavoriteButton: UIButton!
    @IBOutlet weak var statusButton: UIButton!
}
