//
//  RestaurantsViewController.swift
//  KTW
//
//  Created by Gabriel Kieruzel on 16/08/2024.
//  Copyright © 2024 com.thegabrielk. All rights reserved.
//

import UIKit

class RestaurantsViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let originalImage = UIImage(named: "restaurants")?.withRenderingMode(.alwaysTemplate)
        self.tabBarItem.image = originalImage
        self.tabBarItem.selectedImage = originalImage
        
        // Set the default and selected tint colors
//        self.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
//        self.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .selected)
        
        // Set the tab bar tint color for selected state
        self.tabBarController?.tabBar.tintColor = UIColor.white  // Selected state color
        self.tabBarController?.tabBar.unselectedItemTintColor = UIColor.black  // Unselected state color
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
