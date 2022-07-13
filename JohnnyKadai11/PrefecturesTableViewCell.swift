//
//  PrefecturesTableViewCell.swift
//  JohnnyKadai11
//
//  Created by Johnny Toda on 2022/07/05.
//

import UIKit

final class PrefecturesTableViewCell: UITableViewCell {
    @IBOutlet private weak var nameLabel: UILabel!
    
    func configure(prefecturesData: String) {
        nameLabel.text = prefecturesData
    }
}
