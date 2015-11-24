//
//  Project.swift
//  MeltingPotIOS
//
//  Created by Kevin Djedje on 23/10/2015.
//  Copyright © 2015 Kevin Djedje. All rights reserved.
//

import UIKit

class Project: NSObject {
    
    var titre: String!
    var synopsis: String!
    var logo: UIImage!
    
    init(titre: String, synopsis: String) {
        self.titre = titre
        self.synopsis = synopsis
        self.logo = UIImage(named: titre)
    }

}
