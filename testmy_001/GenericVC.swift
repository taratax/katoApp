//
//  GenericVC.swift
//  testmy_001
//
//  Created by taratax on 07/01/2017.
//  Copyright © 2017 com.thegabrielk. All rights reserved.
//

import UIKit

class GenericVC: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var txtView: UITextView!
    
    var pctIdx = 0
    var tabNum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setContent()
        setupLayout()
        
        
    }

   
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        txtView.isScrollEnabled = true
        // txtView.scrollRangeToVisible(NSRange(location:0, length:0))
        print (" h \(imgView.frame.size.height) w \(imgView.frame.size.width)")
    }
 
//    override func viewWillAppear(_ animated: Bool) {
//        txtView.scrollRangeToVisible(NSRange(location:0, length:0))
//    }
    
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



    func setupLayout() {
        
         imgView.translatesAutoresizingMaskIntoConstraints = false
        //imgView.topAnchor.constraint(equalTo: txtView.bottomAnchor, constant: 0).isActive = true
        
        imgView.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant: 8).isActive = true
        
        imgView.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor).isActive = true
        imgView.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor).isActive = true
        imgView.bottomAnchor.constraint(equalTo: txtView.topAnchor).isActive = true
        
        //imgView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.50).isActive = true
        
        imgView.contentMode = UIViewContentMode.scaleToFill
        
        
         txtView.translatesAutoresizingMaskIntoConstraints = false
  
        txtView.topAnchor.constraint(equalTo: imgView.bottomAnchor).isActive = true
        txtView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor).isActive = true
        txtView.heightAnchor.constraint(equalTo: view.layoutMarginsGuide.heightAnchor, multiplier: 0.45).isActive = true
        
        txtView.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor).isActive = true
        txtView.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor).isActive = true
        txtView.setContentCompressionResistancePriority(UILayoutPriorityDefaultLow, for: .vertical)
        
        

        
    }
    
    func setContent() {
        
        imgView.image = UIImage(named: detailPic[tabNum][pctIdx])
        imgView.backgroundColor = UIColor.white
        
        let myIdx = pctIdx % 4
        
        
        txtView.backgroundColor = UIColor(red: CGFloat(colorsSchm[myIdx]["r"]!), green: CGFloat(colorsSchm[myIdx]["g"]!),
                                          blue: CGFloat(colorsSchm[myIdx]["b"]!), alpha: CGFloat(colorsSchm[myIdx]["a"]!))
        
         view.backgroundColor = UIColor(red: CGFloat(colorsSchm[myIdx]["r"]!), green: CGFloat(colorsSchm[myIdx]["g"]!),
                                      blue: CGFloat(colorsSchm[myIdx]["b"]!), alpha: CGFloat(colorsSchm[myIdx]["a"]!))
        
        
        txtView.isScrollEnabled = false
        // print("helllooooo:  tabNum \(tabNum) pctIdx \(pctIdx)")
        let text = (textArray?[tabNum][pctIdx])! //as! String
        txtView.text = "\(text)"
    }
}

