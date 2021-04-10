//
//  PlayersViewController.swift
//  NHLPlayers
//
//  Created by Dmitry Suhoversky on 10.04.21.
//

import UIKit

class PlayersViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let players: [Player] = [
        Player(
            name: "Sidney Crosby",
            position: "C",
            height: "5' 11''",
            team: Penguins
        ),
        Player(
            name: "Evgeni Malkin",
            position: "C",
            height: "6'3''",
            team: Penguins
        ),
        Player(
            name: "Jake Guentzel",
            position: "LW",
            height: "5'11''",
            team: Penguins
        ),
        Player(
            name: "Yegor Sharangovich",
            position: "C",
            height: "6'2''",
            team: Devils
        )
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
    }
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell", for: indexPath)
        
        let player = players[indexPath.row]
        
        cell.textLabel?.text = player.name
        cell.detailTextLabel?.text = player.team.fullName
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let playersDetailViewController = storyboard.instantiateViewController(identifier:"PlayerDetailsViewController") as! PlayerDetailsViewController
        
        let player = players[indexPath.row]
        
        playersDetailViewController.player = player
        navigationController?.pushViewController(playersDetailViewController, animated: true)
    }
    
}
