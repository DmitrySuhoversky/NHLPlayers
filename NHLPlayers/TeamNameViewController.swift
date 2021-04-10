//
//  TeamNameViewController.swift
//  NHLPlayers
//
//  Created by Dmitry Suhoversky on 10.04.21.
//

import UIKit

class TeamNameViewController: UIViewController {

    @IBOutlet weak var teamNameLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var divisionLabel: UILabel!
    
    var team : Team?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        teamNameLabel.text = team?.name
        cityLabel.text = team?.city
        divisionLabel.text = team?.devision
    }
    
    }
