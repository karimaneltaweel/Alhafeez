//
//  RoundCell.swift
//  Alhafeez
//
//  Created by kariman eltawel on 23/05/2023.
//

import UIKit

class RoundCell: UICollectionViewCell {

    @IBOutlet weak var roundedImage: UIImageView!{
        didSet{
//            roundedImageFunc()
        }
    }
    @IBOutlet weak var Description: UILabel!
   
    func setUp(cell:DataForCell){
        roundedImage.image = cell.image
        Description.text = cell.text
    }
    func roundedImageFunc(){
        roundedImage.layer.cornerRadius = 30
    }

}
