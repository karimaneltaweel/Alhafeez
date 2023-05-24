//
//  ViewController.swift
//  Alhafeez
//
//  Created by kariman eltawel on 23/05/2023.
//

import UIKit

class HomeController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.collectionViewLayout = createLayout()
        collectionView.register(UINib(nibName: "RoundCell", bundle: nil), forCellWithReuseIdentifier: "RoundCell")
        collectionView.register(UINib(nibName: "SaleRentCell", bundle: nil), forCellWithReuseIdentifier: "SaleRentCell")

        collectionView.register(SectionHeader.self, forSupplementaryViewOfKind: "Header", withReuseIdentifier:"title")

    }
    func createLayout() -> UICollectionViewCompositionalLayout{
        UICollectionViewCompositionalLayout { [weak self] sectionIndex, layoutEnvironment in
            switch sectionIndex{
            case 0 :
                //item
                let item = compoitionalLayout.createItem(itemWidth: .fractionalWidth(1), itemHeight: .estimated(1), itemSpacing: 0)
                // group
                let group = compoitionalLayout.createGroupWithItem(alignment: .horizontal, groupWidth: .fractionalWidth(1), groupHeight:.estimated(88), item: item, count: 3)
                //section
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuous
                section.boundarySupplementaryItems = [self!.supplementaryHeaderItem()]
                return section
                
            case 1:
                let item = compoitionalLayout.createItem(itemWidth:.fractionalWidth(1), itemHeight: .fractionalHeight(1), itemSpacing: 10)
                // group
                let group = compoitionalLayout.createGroupWithItem(alignment: .horizontal, groupWidth:.fractionalWidth(1), groupHeight: .absolute(116), item: item, count: 3)
                //section
                let section = NSCollectionLayoutSection(group: group)
//                section.boundarySupplementaryItems = [self!.supplementaryHeaderItem()]
                return section
             case 2:
                let item = compoitionalLayout.createItem(itemWidth:.fractionalWidth(1), itemHeight: .fractionalHeight(1), itemSpacing: 10)
                // group
                let group = compoitionalLayout.createGroupWithItem(alignment: .horizontal, groupWidth:.fractionalWidth(1), groupHeight: .absolute(116), item: item, count: 3)
                //section
                let section = NSCollectionLayoutSection(group: group)
//                section.boundarySupplementaryItems = [self!.supplementaryHeaderItem()]

                return section
            case 3:
                let item = compoitionalLayout.createItem(itemWidth:.fractionalWidth(1), itemHeight: .fractionalHeight(1), itemSpacing: 10)
                // group
                let group = compoitionalLayout.createGroupWithItem(alignment: .horizontal, groupWidth:.fractionalWidth(1), groupHeight: .absolute(116), item: item, count: 3)
                //section
                let section = NSCollectionLayoutSection(group: group)
//                section.boundarySupplementaryItems = [self!.supplementaryHeaderItem()]
                

                return section
            default:
                let item = compoitionalLayout.createItem(itemWidth:.fractionalWidth(1), itemHeight: .absolute(120), itemSpacing: 10)
                // group
                let group = compoitionalLayout.createGroupWithItem(alignment: .horizontal, groupWidth:.fractionalWidth(1), groupHeight: .absolute(116), item: item, count: 3)
                //section
                let section = NSCollectionLayoutSection(group: group)
//                section.boundarySupplementaryItems = [self!.supplementaryHeaderItem()]

                return section
            }
            
        }
        
    }
    
    private func supplementaryHeaderItem() -> NSCollectionLayoutBoundarySupplementaryItem {
            .init(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .estimated(50)), elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
        }

}

