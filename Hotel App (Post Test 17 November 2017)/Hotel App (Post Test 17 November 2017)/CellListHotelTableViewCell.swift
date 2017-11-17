//
//  CellListHotelTableViewCell.swift
//  Hotel App (Post Test 17 November 2017)
//
//  Created by Ali Abdurrahman Hidayat on 17/11/17.
//  Copyright © 2017 Ali Abdurrahman Hidayat. All rights reserved.
//

import UIKit

class CellListHotelTableViewCell: UITableViewCell {
    @IBOutlet weak var labelHotel: UILabel!
    @IBOutlet weak var labelAlamat: UILabel!
    @IBOutlet weak var labelPenilaian: UILabel!
    @IBOutlet weak var labelRangking: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
