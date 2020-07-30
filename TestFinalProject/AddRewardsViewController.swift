//
//  AddRewardsViewController.swift
//  TestFinalProject
//
//  Created by Mimi Zhang on 7/29/20.
//  Copyright © 2020 Mimi Zhang. All rights reserved.
//
import UIKit

class AddRewardsViewController: UIViewController {
    var numOfTrees = StaticRewards()
    
    func createStaticRewards() -> Int {
        let swift = StaticRewards()
        swift.trees = 5
        return swift.trees
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        numOfTrees.trees = createStaticRewards()
    }
   
    func getRewards() {
        
    }
    @IBAction func addRewards(_ sender: UIButton) {
        numOfTrees.trees += 1
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let addVC = segue.destination as? RewardsViewController {
          addVC.previousVC = self
        }
        
    }

}
