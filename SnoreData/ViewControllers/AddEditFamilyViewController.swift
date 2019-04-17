//
//  AddEditFamilyViewController.swift
//  SnoreData
//
//  Created by student1 on 4/2/19.
//  Copyright © 2019 clara. All rights reserved.
//

import UIKit

class AddEditFamilyMemberViewController: UIViewController {
    
    @IBOutlet var nameText: UITextField!
    @IBOutlet var ageText: UITextField!
    @IBOutlet var deleteButton: UIButton!
    
    var familyMember: FamilyMember?
    var familyDelegate: FamilyMemberDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let f = familyMember {
            navigationItem.title = "Edit Family Member"
            nameText.text = f.name
            ageText.text = "\(f.age)"
            deleteButton.isHidden = false 
        }
            
        else {
            navigationItem.title = "Add Family Member"
        }
        
    }
    
    @IBAction func save(_ sender: Any) {
        
        guard let name = nameText.text else {
            showAlert(title: "Error", message: "Enter a name")
            return
        }
        
        guard let age = Int16(ageText.text!) else {
            showAlert(title: "Error", message: "Enter a numerical age")
            return
        }
        
        if age < 0 || age > 130 {
            showAlert(title: "Error", message: "Enter an age between 0 and 130")
            return
        }
        
        if let existingFamilyMember = familyMember {
            existingFamilyMember.age = age
            existingFamilyMember.name = name
            familyDelegate!.modify(familyMember: existingFamilyMember)
        }
            
        else {
            familyDelegate!.newfamilyMember(name: name, age: age)
        }
        
        
        // programmatically go back to the page
        navigationController!.popViewController(animated: true)
        
    }
    
    @IBAction func deleteFamilyMember(_ sender: Any) {
//        showAlert(title: "Are you sure?", message: "Are you sure you want to delete this family member? All data will be lost.")
        // TODO: finish the alert Are you sure? Dialog
        familyDelegate?.delete(familyMember: familyMember!)
        navigationController!.popViewController(animated: true)
    }
    
}
