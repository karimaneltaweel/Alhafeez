//
//  DataForCollections.swift
//  Alhafeez
//
//  Created by kariman eltawel on 23/05/2023.
//

import UIKit

struct DataForCell{
    let image : UIImage
    let text : String
}

struct arrayForData{
    //-------data---for--------second-----Section
    
    static  var arrayOfRealEstate = [DataForCell(image:(UIImage(named: "1") ?? UIImage(named: "ph"))!, text: "20.00 BHD"),
                                     DataForCell(image:(UIImage(named: "2") ?? UIImage(named: "ph"))!, text: "20.00 BHD"),
                                     DataForCell(image:(UIImage(named: "3") ?? UIImage(named: "ph"))!, text: "20.00 BHD"),
                                     DataForCell(image:(UIImage(named: "4") ?? UIImage(named: "ph"))!, text: "20.00 BHD"),
                                     DataForCell(image:(UIImage(named: "5") ?? UIImage(named: "ph"))!, text: "20.00 BHD"),
                                     DataForCell(image:(UIImage(named: "6") ?? UIImage(named: "ph"))!, text: "20.00 BHD")]
    //-------data---for--------First-----Section
    static  var arrayOfDailyRental = [DataForCell(image:(UIImage(named: "11") ?? UIImage(named: "ph"))!, text: "20.00 BHD"),
                                      DataForCell(image:(UIImage(named: "12") ?? UIImage(named: "ph"))!, text: "20.00 BHD"),
                                      DataForCell(image:(UIImage(named: "13") ?? UIImage(named: "ph"))!, text: "20.00 BHD"),
                                      DataForCell(image:(UIImage(named: "14") ?? UIImage(named: "ph"))!, text: "20.00 BHD"),
                                      DataForCell(image:(UIImage(named: "15") ?? UIImage(named: "ph"))!, text: "20.00 BHD"),
                                      DataForCell(image:(UIImage(named: "16") ?? UIImage(named: "ph"))!, text: "20.00 BHD"),]
    
    //-------data---for--------round-----Section
    static  var arrayOfRounded = [DataForCell(image:(UIImage(named: "1111") ?? UIImage(named: "ph"))!, text: "DailyRental"),
                                  DataForCell(image:(UIImage(named: "222") ?? UIImage(named: "ph"))!, text: "real estate for sale"),
                                  DataForCell(image:(UIImage(named: "333") ?? UIImage(named: "ph"))!, text: "real estate for rent"),
    ]
}
