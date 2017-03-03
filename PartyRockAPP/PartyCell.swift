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
        let url = URL(string: partyRock.imageURL)!
        
        DispatchQueue.global().async{
            
            do{
            let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    
                    self.videoPreviewImage.image = UIImage(data: data)
                
                }
            }
            catch {
            }
        }

    }
    
}
