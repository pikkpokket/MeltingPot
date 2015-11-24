//
//  DescriptionProjectViewController.swift
//  MeltingPotIOS
//
//  Created by Kevin Djedje on 23/10/2015.
//  Copyright © 2015 Kevin Djedje. All rights reserved.
//

import UIKit

class DescriptionProjectViewController: UIViewController {

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var titreLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    var project: Project!
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBar.hidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.initObjectsView()
    }

    func initObjectsView() {
        self.logoImageView.image = self.project.logo
        self.titreLabel.text = self.project.titre
        self.synopsisLabel.text = self.project.synopsis
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
