//
//  nameCollectionViewCell.swift
//  collectionimg
//
//  Created by Bimal@AppStation on 29/04/22.
//

import UIKit

class nameCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var labelname: UILabel!
    @IBOutlet var imageview: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setStrng(strNm: String, image: String){
        self.labelname.text = strNm
        
//        let img = UIImage(named:"personimg")
        
//        self.imageview.image = UIImage(named:"personimg")
//        let img = UIImage(named:"personimg")
//        self.imageview.image = img
        let photo = UIImage(named: image)
        self.imageview.image = photo
        
    }
    
}
