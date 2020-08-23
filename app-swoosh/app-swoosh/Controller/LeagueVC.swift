//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Kaleb Lindevaldsen on 8/23/20.
//  Copyright © 2020 Kaleb Lindevaldsen. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!

    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        player = Player()

    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
     }

    @IBAction func unwindFromLeagueVC(unwind: UIStoryboardSegue) {
        
    }
    
    
    @IBAction func onMensTapped(_ sender: Any) {
       selectLeague(leagueType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedTapper(_ sender: Any) {
       selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }

}
