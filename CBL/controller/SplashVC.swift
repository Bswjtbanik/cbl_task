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
    override func viewWillAppear(_ animated: Bool){
           ebl_skybankinglogo.transform = CGAffineTransform(translationX: 0, y: +ebl_skybankinglogo.frame.height)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseOut],
                       animations: {
                        self.ebl_skybankinglogo.center.y -= self.view.bounds.height - 250
                        self.view.layoutIfNeeded()
        }, completion: nil)
    }
 
    
}

