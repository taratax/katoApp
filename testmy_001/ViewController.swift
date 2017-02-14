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
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       glcounter = glcounter + 1
        // tableView.register(seeViewCell.self, forCellReuseIdentifier: "seeViewCell")
        
        // print("In view didload 001 : \(tabBarItem.description)  glcounter \(glcounter)")
            tabNum = (tabBarController?.selectedIndex)!
        // tabBarItem .selectedImage
    
        // print("In view didload 002 : \(tabNum)")
        //print("In view didload 003 : \(myarray[tabNum][tabNum])")
        
        if (tabNum == 0) {
        composeStatusBar(title: "KATO" , vc: self)
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "About", style: .plain, target: self, action: #selector(about))
            
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
        navigationController?.navigationBar.barStyle =  .blackTranslucent // this will give you a white status bar

        
        //print("status bar color :  \(preferredStatusBarStyle.rawValue) ")
    view.backgroundColor = UIColor(red:0.20, green:0.62, blue:1.00, alpha:1.0)
        //tableView.rowHeight = UITableViewAutomaticDimension
        //tableView.estimatedRowHeight = 80
        //tableView.rowHeight = 200
        
    }
    
    func about() {
        print ("about !!!")
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        composeStatusBar(title: myarray[cellNum] , vc: self )
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? seeViewCell
        cell?.selectionStyle = .none
        
        cell?.setCell(indexPath.row,tabNum: tabNum)
        return cell!
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myarray[tabNum].count
    }

 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // print("here e1!!! \(indexPath.row)")
        
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




