//
//  ComposationalLayout.swift
//  Alhafeez
//
//  Created by kariman eltawel on 23/05/2023.
//

import UIKit
enum CompositionalGroupAlignment{
    case vertical
    case horizontal
}
struct compoitionalLayout{
    
    static func createItem(itemWidth:NSCollectionLayoutDimension,itemHeight:NSCollectionLayoutDimension,itemSpacing:CGFloat) -> NSCollectionLayoutItem{
        let item = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension:itemWidth, heightDimension:itemHeight))
        item.contentInsets = NSDirectionalEdgeInsets(top: itemSpacing, leading: itemSpacing, bottom: itemSpacing, trailing: itemSpacing)
        return item
    }
    
    
    static func createGroupWithItems(alignment:CompositionalGroupAlignment,
                                     groupWidth:NSCollectionLayoutDimension,groupHeight:NSCollectionLayoutDimension,
                                     items:[NSCollectionLayoutItem]) -> NSCollectionLayoutGroup{
        
        switch alignment{
        case .vertical:
            return NSCollectionLayoutGroup.vertical(layoutSize: NSCollectionLayoutSize(widthDimension: groupWidth, heightDimension:groupHeight), subitems: items)
            
        case .horizontal:
            return NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: groupWidth, heightDimension:groupHeight), subitems: items)
        }
        
        
    }
    
    static func createGroupWithItem(alignment:CompositionalGroupAlignment,
                                     groupWidth:NSCollectionLayoutDimension,groupHeight:NSCollectionLayoutDimension,
                                    item:NSCollectionLayoutItem,count:Int) -> NSCollectionLayoutGroup{
        
        switch alignment{
        case .vertical:
            return NSCollectionLayoutGroup.vertical(layoutSize:NSCollectionLayoutSize(widthDimension: groupWidth, heightDimension:groupHeight), subitem: item, count:count)
            
        case .horizontal:
            return NSCollectionLayoutGroup.horizontal(layoutSize:NSCollectionLayoutSize(widthDimension: groupWidth, heightDimension:groupHeight), subitem: item, count:count)
        }
        
        
    }

    
}
