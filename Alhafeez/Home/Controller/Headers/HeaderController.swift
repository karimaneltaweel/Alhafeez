//
//  HeaderController.swift
//  Alhafeez
//
//  Created by kariman eltawel on 23/05/2023.
//

import UIKit

class HeaderController: UICollectionReusableView {
        
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var searchView: UIView!{
        didSet{
            setupSearchViewCorner()
        }
    }
    @IBOutlet weak var searchBar: UITextField!{
        didSet{
            setupSearchBarView()
        }
    }
    @IBOutlet weak var button: UIButton!
    private func setupSearchBarView() {
        searchBar.leftViewMode = UITextField.ViewMode.always
        let imageView = UIImageView(frame: CGRect(x:0, y: 0, width: 20, height: 20))
        let image = UIImage(systemName: "magnifyingglass")
        imageView.image = image
        searchBar.leftView = imageView
        imageView.tintColor = .secondColor
    }
    
    private func setupSearchViewCorner() {
        searchView.layer.borderWidth = 1
        searchView.layer.cornerRadius = 8
        searchView.layer.borderColor = #colorLiteral(red: 0.8678508401, green: 0.8678508401, blue: 0.8678508401, alpha: 1).cgColor
    }
}
