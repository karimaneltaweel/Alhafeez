//
//  HomeController+Delegates.swift
//  Alhafeez
//
//  Created by kariman eltawel on 23/05/2023.
//

import UIKit

extension HomeController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var numOfItem = 0
        switch section{
        case 0:
            numOfItem = arrayForData.arrayOfRounded.count
        case 1:
            numOfItem = arrayForData.arrayOfRealEstate.count
        case 2:
            numOfItem = arrayForData.arrayOfDailyRental.count
        case 3:
            numOfItem = arrayForData.arrayOfDailyRental.count
        default:
            numOfItem = 0
        }
        return numOfItem
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.section{
        case 0:        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RoundCell", for: indexPath) as! RoundCell
            cell.setUp(cell:arrayForData.arrayOfRounded[indexPath.row])
            return cell
        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SaleRentCell", for: indexPath) as! SaleRentCell
            cell.setUp(cell:arrayForData.arrayOfRealEstate[indexPath.row])
            return cell
        case 2:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SaleRentCell", for: indexPath) as! SaleRentCell
            cell.setUp(cell:arrayForData.arrayOfDailyRental[indexPath.row])
            return cell
        case 3:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SaleRentCell", for: indexPath) as! SaleRentCell
            cell.setUp(cell:arrayForData.arrayOfDailyRental[indexPath.row])
            return cell
        default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RoundCell", for: indexPath) as! RoundCell
            cell.setUp(cell:arrayForData.arrayOfRounded[indexPath.row])
            return cell
        }
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            switch indexPath.section{
            case 0:
                let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier:"HeaderController", for: indexPath) as! HeaderController
                    return header
                
         //   case 1:

//                let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier:"title", for: indexPath) as! HeaderSections
//                    return header
            case 2:
                let headerView = collectionView.dequeueReusableSupplementaryView(
                    ofKind: kind,
                    withReuseIdentifier: "HeaderController",
                    for: indexPath)
                guard let typedHeaderView = headerView as? HeaderController
                else { return headerView }
                typedHeaderView.searchView.isHidden = true
                typedHeaderView.searchBar.isHidden = true
                typedHeaderView.button.isHidden = true
                typedHeaderView.titleLabel.text = "Real estate for rent"
                return typedHeaderView
            case 3:
                let headerView = collectionView.dequeueReusableSupplementaryView(
                    ofKind: kind,
                    withReuseIdentifier: "HeaderController",
                    for: indexPath)
                guard let typedHeaderView = headerView as? HeaderController
                else { return headerView }
                typedHeaderView.searchView.isHidden = true
                typedHeaderView.searchBar.isHidden = true
                typedHeaderView.button.isHidden = true
                typedHeaderView.titleLabel.text = "Real estate for rent"
                
                return typedHeaderView
            default:
                let headerView = collectionView.dequeueReusableSupplementaryView(
                    ofKind: kind,
                    withReuseIdentifier: "HeaderController",
                    for: indexPath)
                guard let typedHeaderView = headerView as? HeaderController
                else { return headerView }
                typedHeaderView.searchView.isHidden = true
                typedHeaderView.searchBar.isHidden = true
                typedHeaderView.button.isHidden = true
                return typedHeaderView
            }
            
        default:
            assert(false, "Invalid element type")
        }
        
    }

}

