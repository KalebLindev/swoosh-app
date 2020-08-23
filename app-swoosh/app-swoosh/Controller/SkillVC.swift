//
//  SkillVC.swift
//  app-swoosh
//
//  Created by Kaleb Lindevaldsen on 8/23/20.
//  Copyright © 2020 Kaleb Lindevaldsen. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {

    var player: Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(player.desiredLeague!)
        
        player = Player()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onFinishTapped(_ sender: Any) {
        //performSegue(withIdentifier: "", sender: self)
    }
    
    @IBAction func unwindFromLeagueVC(unwind: UIStoryboardSegue) {
        
    }
    
    @IBAction func onBeginnerTapped(_ sender: Any) {
        selectExperience(experienceType: "Beginner")
    }
    
    @IBAction func onBallerTapped(_ sender: Any) {
        selectExperience(experienceType: "Baller")
    }
    
    func selectExperience(experienceType: String) {
        player.selectedSkillLevel = experienceType
        nextBtn.isEnabled = true
    }
    
}
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

