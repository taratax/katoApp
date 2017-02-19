//
//  configureUI.swift
//  testmy_001
//
//  Created by taratax on 07/01/2017.
//  Copyright © 2017 com.thegabrielk. All rights reserved.
//

import UIKit



func composeStatusBar(title: String, vc: UIViewController) {
    let frame = CGRect(x: 0,y: 0, width: 200, height: 44)
    let titleLbl: UILabel = UILabel(frame: frame)
    
    // titleLbl.backgroundColor = UIColor(red:0.11, green:0.71, blue:1.00, alpha:1.0)
    
    titleLbl.font = UIFont(name: "AvenirNext-DemiBold", size: 20)
    titleLbl.textAlignment  = .center
    titleLbl.textColor = UIColor.white
    titleLbl.text = title
    vc.navigationItem.titleView = titleLbl
    
  
    
    
    
}
