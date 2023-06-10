//
//  SectionHeader.swift
//  Alhafeez
//
//  Created by kariman eltawel on 24/05/2023.
//

import UIKit

class SectionHeader: UICollectionReusableView {

    
    @IBOutlet weak var sectionTitle: UILabel! {
        didSet{
            self.configureTitle()
        }
    }
    var title: String?
    
    func configureTitle() {
        self.sectionTitle.text = title
    }
    
}
