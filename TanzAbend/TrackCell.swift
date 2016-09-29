//
//  TrackCell.swift
//  TanzAbend
//
//  Created by Ivashin Dmitry on 9/28/16.
//  Copyright © 2016 Ivashin Dmitry. All rights reserved.
//

import UIKit

class TrackCell: UITableViewCell {

    @IBOutlet weak var coverImageView: UIImageView!
    
    @IBOutlet weak var albumLabel: UILabel!
    @IBOutlet weak var trackLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
