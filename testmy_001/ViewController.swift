//
//  ViewController.swift
//  testmy_001
//
//  Created by taratax on 28/12/2016.
//  Copyright © 2016 com.thegabrielk. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
   
    var cellNum: Int = 0
    var cellId = "seeCell"
    var tabNum : Int = 0
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
       
        return .lightContent
       
    }
    
    enum tabNum_1 : Int  {
        case see = 0
        case hotels
        case eatingOut
        case nightLife
        case transport
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        if #available(iOS 13.0, *) {
            let appearance = UINavigationBarAppearance()
            appearance.configureWithDefaultBackground()
            appearance.titleTextAttributes = [.foregroundColor: UIColor.white]  //Title color
            appearance.backgroundColor = UIColor(red:0.20, green:0.62, blue:1.00, alpha:1.0) // Bar background color

            // Customize back button color
            appearance.backButtonAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.white] // Replace with your desired color

            navigationController?.navigationBar.standardAppearance = appearance
            navigationController?.navigationBar.scrollEdgeAppearance = appearance
            
            navigationController?.navigationBar.tintColor = UIColor.white // Chevron color
        } else {
            // Fallback for iOS versions before 13.0
            self.navigationController?.navigationBar.tintColor = UIColor.white
        }
    }

 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       glcounter = glcounter + 1
       tabNum = (tabBarController?.selectedIndex)!
     
        
        let backButton = UIBarButtonItem()
            backButton.title = "Back" // Replace with your desired text
            navigationItem.backBarButtonItem = backButton
        
        if (tabNum == 0) {
        composeStatusBar(title: "KTW" , vc: self)
            let btn = UIBarButtonItem(title: "About", style: .plain, target: self, action: #selector(about))
            btn.tintColor = UIColor.white
          
            navigationItem.leftBarButtonItem = btn
            // navigationItem.leftBarButtonItem = UIBarButtonItem(title: "About", style: .plain, target: self, action: #selector(about))
            
        } else if (tabNum == 1) {
        composeStatusBar(title: "Hotels" , vc: self)
        } else if (tabNum == 2) {
        composeStatusBar(title: "Eating Out" , vc: self)
        } else if (tabNum == 3 ) {
            composeStatusBar(title: "Night life" , vc: self)
        } else if (tabNum ==  4 ) {
        composeStatusBar(title: "Transport" , vc: self)
        }
        
        //http://stackoverflow.com/documentation/ios/378/change-status-bar-color#t=201701112222358193757
//        navigationController?.navigationBar.barStyle = .black // this will give you a white status bar

        if #available(iOS 11.0, *) {
            additionalSafeAreaInsets = UIEdgeInsets.zero
        }
        
        if #available(iOS 15.0, *) {
            let appearance = UINavigationBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.backgroundColor = UIColor(red:0.20, green:0.62, blue:1.00, alpha:1.0)
            navigationController?.navigationBar.standardAppearance = appearance
            navigationController?.navigationBar.scrollEdgeAppearance = appearance
        }
        
        self.navigationController?.navigationBar.isOpaque = false
        self.navigationController?.navigationBar.barTintColor = UIColor(red:0.20, green:0.62, blue:1.00, alpha:1.0)
        view.backgroundColor = UIColor(red:0.20, green:0.62, blue:1.00, alpha:1.0)
    
    }
    
    @objc func about() {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier :"about-VC") 
        self.present(viewController, animated: true)
        
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? seeViewCell
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        let cell2 = cell as? seeViewCell
        cell2?.selectionStyle = .none
        cell2?.setCell(indexPath.row,tabNum: tabNum)
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myarray[tabNum].count
    }

 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        cellNum = indexPath.row
        performSegue(withIdentifier: "SpodekSeg", sender: nil)
    }
    
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "SpodekSeg"  {
        
        let myVC =   segue.destination  as! GenericVC
             myVC.pctIdx = cellNum
             myVC.tabNum = tabNum
             composeStatusBar(title: myarray[tabNum][cellNum] , vc: segue.destination )
    }

 }
}




