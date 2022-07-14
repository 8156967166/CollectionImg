//
//  ViewController.swift
//  collectionimg
//
//  Created by Bimal@AppStation on 29/04/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var collectionView: UICollectionView!
    
    let listOfName = ["Aneesha","Amal","sruthi","Kannan","Jerin","saravanan"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UICollectionViewDataSource,UICollectionViewDelegate {
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        collectionView.deselectItem(at: indexPath, animated: true)
//        print("You tapped me")
//    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listOfName.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "namecell", for: indexPath) as! nameCollectionViewCell
        if(indexPath.item % 2 == 0){
            cell.setStrng(strNm: listOfName[indexPath.item], image: "profileimg")
        }
        else {
            cell.setStrng(strNm: listOfName[indexPath.item], image: "personimg")
        }
        
        return cell
    }
}
