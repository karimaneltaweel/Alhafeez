//
//  SaleRentCell.swift
//  Alhafeez
//
//  Created by kariman eltawel on 23/05/2023.
//

import UIKit

class SaleRentCell: UICollectionViewCell {

    @IBOutlet weak var saleRentImage: UIImageView!
    @IBOutlet weak var saleRentPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setUp(cell:DataForCell){
        
        saleRentImage.image = cell.image
        saleRentPrice.text = cell.text
    }
    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
        self.layer.cornerRadius = 5
        self.layer.masksToBounds = true
        self.layer.borderColor = #colorLiteral(red: 0.9223982692, green: 0.9174852967, blue: 0.9175704122, alpha: 1).cgColor
        self.layer.borderWidth = 2
        
    }


}
