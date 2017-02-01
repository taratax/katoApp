//
//  seeViewCell.swift
//  testmy_001
//
//  Created by taratax on 28/12/2016.
//  Copyright © 2016 com.thegabrielk. All rights reserved.
//

import UIKit

class seeViewCell: UITableViewCell {
    @IBOutlet weak var myimageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCell(_ index: Int, tabNum: Int) {
     
        super.updateConstraints()
        var aspectRatio: CGFloat = 1
        
        myimageView.image = UIImage(named: myPicures[tabNum][index])
        titleLbl.text = myHeaders[tabNum][index]
        let myIndex = index % 4
        titleLbl.backgroundColor =  UIColor(red: CGFloat(colorsSchm[myIndex]["r"]!), green: CGFloat(colorsSchm[myIndex]["g"]!),
                                            blue: CGFloat(colorsSchm[myIndex]["b"]!), alpha: CGFloat(colorsSchm[myIndex]["a"]!))
        titleLbl.font = UIFont(name: "AvenirNext-DemiBold", size: 20)
        
        titleLbl.textAlignment = .center
    
        myimageView.translatesAutoresizingMaskIntoConstraints = false
        myimageView.topAnchor.constraint(equalTo: titleLbl.bottomAnchor, constant: 0).isActive = true
        myimageView.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor , constant: 0).isActive = true
        myimageView.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor, constant: 0).isActive = true
        myimageView.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.90).isActive = true
        myimageView.contentMode = UIViewContentMode.scaleToFill
        
    
        titleLbl.translatesAutoresizingMaskIntoConstraints = false
        titleLbl.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor, constant: 0).isActive = true
        titleLbl.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor, constant: 0).isActive = true
        
        self.backgroundColor = UIColor(red:0.20, green:0.62, blue:1.00, alpha:1.0)
    }

}
