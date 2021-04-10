//
//  PlayerDetailsViewController.swift
//  NHLPlayers
//
//  Created by Dmitry Suhoversky on 10.04.21.
//

import UIKit

class PlayerDetailsViewController: UIViewController{

    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var teamButton: UIButton!
    
    var player: Player?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = player?.name
        positionLabel.text = player?.position
        heightLabel.text = player?.height
        teamButton.setTitle(player?.team.fullName, for: .normal)
    }

    @IBAction func onTeamButtonTap(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let teamNameViewController = storyboard.instantiateViewController(identifier: "TeamNameViewController") as! TeamNameViewController

        teamNameViewController.team = player?.team

        present(teamNameViewController, animated: true, completion: nil)
        
    }
        

    }
