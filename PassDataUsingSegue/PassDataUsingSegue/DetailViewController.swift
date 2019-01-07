//
//  DetailViewController.swift
//  PassDataUsingSegue
//
//  Created by duycuong on 1/7/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailTextFiled: UITextField!
    
    var dataText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if dataText != nil {
            detailTextFiled.text = dataText
        }

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        detailTextFiled.textColor = UIColor.red
        dataText = detailTextFiled.text
        
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
