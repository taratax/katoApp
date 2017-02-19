//
//  AboutVC.swift
//  KATO
//
//  Created by taratax on 18/02/2017.
//  Copyright © 2017 com.thegabrielk. All rights reserved.
//

import UIKit

class AboutVC: UIViewController {

 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        composeStatusBar(title: "About" , vc: self)
        let newBackButton = UIBarButtonItem(title: "Back",
                                            style: UIBarButtonItemStyle.plain, target: self, action: #selector(AboutVC.backAction))
        
     
         navigationItem.leftBarButtonItem = newBackButton

       navigationController?.navigationBar.barStyle =  .blackTranslucent 
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(red:0.20, green:0.62, blue:1.00, alpha:1.0)
    }

    func backAction () {
        dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
