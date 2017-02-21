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
       
        
      
            tabNum = (tabBarController?.selectedIndex)!
     
    
       
        
        if (tabNum == 0) {
        composeStatusBar(title: "KATO" , vc: self)
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
        navigationController?.navigationBar.barStyle = .black // this will give you a white status bar

        
           view.backgroundColor = UIColor(red:0.20, green:0.62, blue:1.00, alpha:1.0)
    
        
    }
    
    func about() {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier :"about-VC") as! UIViewController
        self.present(viewController, animated: true)
        //print ("about !!!")
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? seeViewCell
        //cell?.selectionStyle = .none
        //cell?.setCell(indexPath.row,tabNum: tabNum)
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        let cell2 = cell as? seeViewCell
        cell2?.selectionStyle = .none
        cell2?.setCell(indexPath.row,tabNum: tabNum)
        
        //print("h: \(cell2?.frame.size.height) w: \(cell2?.frame.size.width)")

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




