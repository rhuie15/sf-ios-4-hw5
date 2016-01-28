//
//  AddItemViewController.swift
//  iOS4-HW5-Delegation
//
//  Created by Kathryn Rotondo on 1/20/16.
//  Copyright © 2016 Kathryn Rotondo. All rights reserved.
//

import UIKit

protocol ItemSaver {
    func saveItem(item:String)
}


class AddItemViewController: UIViewController {
    
    var delegate:ItemSaver?
    
    
    @IBOutlet weak var itemTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func saveButtonPressed(sender: AnyObject) {
        
        delegate?.saveItem(itemTextField!.text!)
        
        navigationController?.popViewControllerAnimated(true)
        
    }
}
