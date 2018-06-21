//
//  PlayersViewController.swift
//  Ratings
//
//  Created by Nguyen Tu on 21/6/18.
//  Copyright © 2018 Nguyen Tu. All rights reserved.
//

import UIKit

class PlayersViewController: UITableViewController {
    
    var players = SampleData.generatePlayersData()


}

extension PlayersViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell", for: indexPath) as! PlayerCell
        
        let player = players[indexPath.row]
        cell.player = player
        return cell
    }
}
