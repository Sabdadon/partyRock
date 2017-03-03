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
        
       
        
        let p1 = PartyRock(imageURL: "https://yt3.ggpht.com/-Yn_PpHByTN8/AAAAAAAAAAI/AAAAAAAAAAA/p7Om3nMN3Bk/s88-c-k-no-mo-rj-c0xffffff/photo.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/rNeDSn1Octc\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Shape of You")
        let p2 = PartyRock(imageURL: "https://i.ytimg.com/vi/KrGyD4kHTSE/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=-v6VQ26b1RCyEcO3d1mkTa9KXy0", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/KrGyD4kHTSE\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: " Dead man Tells no tales")
        
        let p3 = PartyRock(imageURL: "https://i.ytimg.com/vi/zDefqB8juXs/hqdefault.jpg?custom=true&w=246&h=138&stc=true&jpg444=true&jpgq=90&sp=68&sigh=Sp3nXEWBRi01L9QDRKIWlz9xAhQ", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/zDefqB8juXs\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Showkali")
        let p4 = PartyRock(imageURL: "https://i.ytimg.com/vi/n_fA0hU5-a4/hqdefault.jpg?custom=true&w=168&h=94&stc=true&jpg444=true&jpgq=90&sp=68&sigh=_VabnTH-GySQFLHuV1vzzT0qTYw", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/n_fA0hU5-a4\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Chalmaar")
        let p5 = PartyRock(imageURL: "https://i.ytimg.com/vi/q-gLRp5bSpw/hqdefault.jpg?custom=true&w=246&h=138&stc=true&jpg444=true&jpgq=90&sp=68&sigh=NWzivEByn3xGxZ7YoDsTNpMWM0k", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/q-gLRp5bSpw\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Sky Fall")
        
        tableView.delegate = self
        
        tableView.dataSource = self
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)

        
        
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
         let pr = partyRocks[indexPath.row]
        performSegue(withIdentifier: "VideoVC", sender: pr)
    }

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
        if let party = sender as? PartyRock{
          destination.partyRock = party
        }
    }
    }
}

