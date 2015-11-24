//
//  ViewController.swift
//  MeltingPotIOS
//
//  Created by Kevin Djedje on 23/10/2015.
//  Copyright © 2015 Kevin Djedje. All rights reserved.
//

import UIKit

class MainViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {

    var userData = UserData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("MainViewController")
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.userData.getNumberOfProjects()
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let project:Project = self.userData.getProjetAtIndex(indexPath.row)
        let myCell:MyCustomCell = tableView.dequeueReusableCellWithIdentifier("MyCustomCell") as! MyCustomCell
        
        
        myCell.titreLabel.text = project.titre
        myCell.synopsisLabel.text = project.synopsis
        myCell.logoImageView.image = project.logo
        
        return myCell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let descriptionView:DescriptionProjectViewController = self.storyboard?.instantiateViewControllerWithIdentifier("DescriptionProject") as! DescriptionProjectViewController
        
        descriptionView.project = self.userData.getProjetAtIndex(indexPath.row)
        
        navigationController?.pushViewController(descriptionView, animated: true)
    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBar.hidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

