//
//  AddProjectViewController.swift
//  MeltingPotIOS
//
//  Created by Kevin Djedje on 23/10/2015.
//  Copyright © 2015 Kevin Djedje. All rights reserved.
//

import UIKit

class AddProjectViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var titreTextField: UITextField!
    @IBOutlet weak var synopsisTextField: UITextField!
    @IBOutlet weak var logoTextField: UITextField!
    
    let userData = UserData()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.closeKeyboard()
    }

    func closeKeyboard() {
        self.titreTextField.delegate = self
        self.synopsisTextField.delegate = self
        self.logoTextField.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    @IBAction func addProjectButton(sender: AnyObject) {
        userData.addProject(Project(titre: titreTextField.text!, synopsis: synopsisTextField.text!))
        
        print("Size tab : \(userData.getNumberOfProjects())")
    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBar.hidden = false
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
