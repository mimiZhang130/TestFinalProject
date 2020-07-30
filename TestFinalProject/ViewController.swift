//
//  ViewController.swift
//  TestFinalProject
//
//  Created by Mimi Zhang on 7/29/20.
//  Copyright © 2020 Mimi Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func didTapButton() {
        let vc = UIViewController()
        vc.view.backgroundColor = .red
        navigationController?.pushViewController(vc, animated: true)
    }
   

    
    

}

