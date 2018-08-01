//
//  SplashVC.swift
//  CBL
//
//  Created by Biswajit Banik on 7/30/18.
//  Copyright © 2018 Biswajit Banik. All rights reserved.
//

import UIKit

class SplashVC: UIViewController {


    
    @IBOutlet weak var ebl_skybankinglogo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
            self.performSegue(withIdentifier: "nextPage", sender: nil)
            
            
         
        }
    
    }
 
    
}

