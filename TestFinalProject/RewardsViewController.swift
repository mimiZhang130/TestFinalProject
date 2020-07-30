//
//  RewardsViewController.swift
//  TestFinalProject
//
//  Created by Mimi Zhang on 7/29/20.
//  Copyright © 2020 Mimi Zhang. All rights reserved.
//

import UIKit

class RewardsViewController: UIViewController {
    var previousVC = AddRewardsViewController()
    
    @IBOutlet weak var treesLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        number()
        // Do any additional setup after loading the view.
    }
    
    func number(){
        let treeNum = previousVC.numOfTrees
        treesLabel.text = "number of Trees: \(treeNum)"
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    /* override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let addVC = segue.destination as? RewardsViewController {
          addVC.previousVC = self
        }
        
    } */
    
    
}
