//
//  ViewController.swift
//  DataPersistance
//
//  Created by IMCS2 on 2/12/19.
//  Copyright © 2019 IMCS2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var PhoneNumTextfield: UITextField!
    @IBOutlet var NameTextfield: UITextField!
     @IBOutlet weak var SaveUpdateOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let nameValue = UserDefaults.standard.value(forKey: "Name"){
            NameTextfield.text = UserDefaults.standard.value(forKey: "Name") as? String
            SaveUpdateOutlet.setTitle("Update", for: .normal)
            //            print(NameTextfield.text!)
        }
        else{
            UserDefaults.standard.set(NameTextfield.text, forKey: "Name")
            //            print(NameTextfield.text!)
        }
        if let PhoneNum = UserDefaults.standard.value(forKey: "PhoneNumber"){
            PhoneNumTextfield.text = UserDefaults.standard.value(forKey: "PhoneNumber") as? String
            //            print(PhoneNumTextfield.text!)
        }
        else{
            UserDefaults.standard.set(PhoneNumTextfield.text, forKey: "PhoneNumber")
            print(PhoneNumTextfield.text!)
        }
    }
    
    @IBAction func SaveUpdateButton(_ sender: Any) {
        UserDefaults.standard.set(NameTextfield.text, forKey: "Name")
        UserDefaults.standard.set(PhoneNumTextfield.text, forKey: "PhoneNumber")
        viewDidLoad()
    }
    
}

