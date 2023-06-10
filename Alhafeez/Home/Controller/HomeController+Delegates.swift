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
//            case 1:
//
//                let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier:"\(SectionHeader.self)", for: indexPath) as! SectionHeader
//                header.addSubview(labelText(text: "Daily Rental"))
//                return header
//            case 2:
//                let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier:"SectionHeader", for: indexPath) as! SectionHeader
//                header.addSubview(labelText(text: "real estate for sale"))
//                return header
//            case 3:
//                let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier:"SectionHeader", for: indexPath) as! SectionHeader
//                header.addSubview(labelText(text: "real estate for rent"))
//                return header
            default:
                
                let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier:"SectionHeader", for: indexPath) as! SectionHeader
//                header.addSubview(labelText(text: "Daily Rental"))
//                header.sectionTitle.text = "ssddd"
                header.title = "hghg"
                return header
            }
            
        default:
            assert(false, "Invalid element type")
        }
        
    }
    
    public func collectionView(_:UICollectionView, layout: UICollectionViewLayout, referenceSizeForHeaderInSection: Int) -> CGSize
    {
        if referenceSizeForHeaderInSection > 0 {
            return CGSize.zero
        }
        return CGSize(width:0, height:100)
    }
    
    
    func labelText(text:String)->UILabel{
        let label = UILabel(frame: CGRect(x: 10, y: 0, width: 200, height: 21))
        label.textAlignment = .left
        label.font = .boldSystemFont(ofSize: 17)
        label.text = text
        let header = collectionView
        return label
    }
    
}

