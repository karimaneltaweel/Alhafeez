//
//  ViewController.swift
//  Alhafeez
//
//  Created by kariman eltawel on 23/05/2023.
//

import UIKit

class HomeController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    //MARK: -life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.collectionViewLayout = createLayout()
        collectionView.register(UINib(nibName: "RoundCell", bundle: nil), forCellWithReuseIdentifier: "RoundCell")
        collectionView.register(UINib(nibName: "SaleRentCell", bundle: nil), forCellWithReuseIdentifier: "SaleRentCell")
        
        collectionView.register(SectionHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "SectionHeader")
        
    }
    
    
    
    //MARK: -LAYOUT
    func createLayout() -> UICollectionViewCompositionalLayout{
        UICollectionViewCompositionalLayout { [weak self] sectionIndex, layoutEnvironment in
            switch sectionIndex{
            case 0 :
               return self?.firstCollection()
            case 1:
                return self?.secondCollection()
             case 2:
                return self?.thirdCollection()
            case 3:
                return self?.FourthCollection()
            default:
                return self?.firstCollection()
            }
            
        }
        
    }
    
    func supplementaryHeaderItem(height:CGFloat) -> NSCollectionLayoutBoundarySupplementaryItem {
            .init(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .estimated(height)), elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
        }

}

