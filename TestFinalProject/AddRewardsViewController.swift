//
//  AddRewardsViewController.swift
//  TestFinalProject
//
//  Created by Mimi Zhang on 7/29/20.
//  Copyright © 2020 Mimi Zhang. All rights reserved.
//
import CoreData
import UIKit

class AddRewardsViewController: UIViewController {
//    var nextVC = RewardsViewController()
    var numOfTrees = Int()
    var count = Int()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
   
    func getRewards(){
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            if let coreDataTrees = try? context.fetch(Rewards.fetchRequest()) as? [Rewards]{
                if let theTrees = coreDataTrees {
                    numOfTrees = theTrees
                }
            }
        }
    }
    @IBAction func addRewards(_ sender: UIButton) {
        
        numOfTrees += 1

        //declaring object reward
           if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
               let reward = Rewards(entity: Rewards.entity(), insertInto: context)
        
        reward.trees = Int16(numOfTrees)
            try? context.save()

        //Updating data about rewards
            
            }
        
        //fetching data about Rewards
           
        
       }
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
