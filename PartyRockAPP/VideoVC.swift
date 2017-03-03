//
//  VideoVC.swift
//  PartyRockAPP
//
//  Created by sabarish sridhar on 28/02/17.
//  Copyright © 2017 sabarish. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var titleLbl: UILabel!
    
    @IBAction func backBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    private var _partyRock : PartyRock!
    var partyRock : PartyRock!{
        get{
        return _partyRock
        }
        set {
        _partyRock = newValue
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLbl.text = partyRock.videoTitle
        webView.loadHTMLString(partyRock.videoURL, baseURL: nil)
        // Do any additional setup after loading the view.
    }

   

}
