//
//  ViewController.swift
//  PassDataUsingSegue
//
//  Created by duycuong on 1/7/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {

    @IBOutlet weak var masterTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as? DetailViewController
        destination?.dataText = masterTextField.text
    }
    
    @IBAction  func unwind(for unwindSegue: UIStoryboardSegue) {
        let source = unwindSegue.source as? DetailViewController
        masterTextField.text = source?.dataText
    }
}

