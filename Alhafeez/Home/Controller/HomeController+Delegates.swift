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
            case 1:
                
                let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier:"\(SectionHeader.self)", for: indexPath) as! SectionHeader
                header.sectionTitle.text = "Daily Rental"
                return header
//            case 2:
//                let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier:\(SectionHeader.self), for: indexPath) as! SectionHeader
//                header.sectionTitle.text = "Real estate for sale"
//                return header
//            case 3:
//                let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier:"SectionHeader", for: indexPath) as! SectionHeader
//                header.sectionTitle.text = "Real estate for rent"
//                
//                return header
            default:
                let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier:"\(SectionHeader.self)", for: indexPath) as! SectionHeader
                header.sectionTitle.text = ""
                return header
            }
            
        default:
            assert(false, "Invalid element type")
        }
        
    }
    
}

