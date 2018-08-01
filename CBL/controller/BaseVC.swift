//
//  BaseVC.swift
//  CBL
//
//  Created by Biswajit Banik on 8/1/18.
//  Copyright © 2018 Biswajit Banik. All rights reserved.
//

import UIKit

class BaseVC: UIViewController, UICollectionViewDataSource , UICollectionViewDelegate {
 
    var imageMenu = [UIImage(named: "list_men"),UIImage(named: "list_banking"),UIImage(named: "list_benefits"),UIImage(named: "list_billspay"),UIImage(named: "list_calculato"),UIImage(named: "list_fund"),UIImage(named: "list_help"),UIImage(named: "list_locateus"),UIImage(named: "list_priority"),UIImage(named: "list_products"),UIImage(named: "list_zip"),UIImage(named: "list_message")]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

    }

}
extension BaseVC {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageMenu.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImagemenuCell", for: indexPath) as! ImagemenuCell
        cell.imageMenu.image = imageMenu[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let controller = storyboard?.instantiateViewController(withIdentifier: "HomeVC")
            self.present(controller!, animated: true, completion: nil)
            
        }  else if indexPath.row == 11{
            let controller = storyboard?.instantiateViewController(withIdentifier: "MessageVC")
            self.present(controller!, animated: true, completion: nil)
            
        } 
    }
    
    
}
