//
//  ViewController.swift
//  PartyRockAPP
//
//  Created by sabarish sridhar on 28/02/17.
//  Copyright © 2017 sabarish. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    var partyRocks = [PartyRock]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        let p1 = PartyRock(imageURL: "https://yt3.ggpht.com/-Yn_PpHByTN8/AAAAAAAAAAI/AAAAAAAAAAA/p7Om3nMN3Bk/s88-c-k-no-mo-rj-c0xffffff/photo.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/JGwWNGJdvx8\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Shape of You")
        tableView.delegate = self
        tableView.dataSource = self
        partyRocks.append(p1)
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell",for: indexPath) as? PartyCell {
            let partyRock = partyRocks[indexPath.row]
            cell.updateUI(partyRock: partyRock)
            return cell
        }
        else{
        return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
    

   


}

