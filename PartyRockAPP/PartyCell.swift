//
//  PartyCell.swift
//  PartyRockAPP
//
//  Created by sabarish sridhar on 28/02/17.
//  Copyright © 2017 sabarish. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoTitle: UILabel!
    @IBOutlet weak var videoPreviewImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateUI(partyRock : PartyRock){
        videoTitle.text = partyRock.videoTitle
        
        //TODO : SET IMAGE FROM URL
    }
    
}
