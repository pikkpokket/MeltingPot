//
//  UserData.swift
//  MeltingPotIOS
//
//  Created by Kevin Djedje on 23/10/2015.
//  Copyright © 2015 Kevin Djedje. All rights reserved.
//

import UIKit

class UserData: NSObject {

    var projects:[Project]!
    
    override init() {
        super.init()
        self.initProjects()
    }
    
    func initProjects() {
        projects = [Project(titre: "nike", synopsis: "Just Do It"), Project(titre: "snapchat", synopsis: "Take a Snap"), Project(titre: "mtv", synopsis: "Listen MTV")]
    }
    
    func getProjects() -> [Project] {
        return self.projects
    }
    
    func getProjetAtIndex(index: Int) -> Project {
        return self.projects[index]
    }
    
    func getNumberOfProjects() -> Int {
        return self.projects.count
    }
    
    func addProject(newProject: Project) {
        self.projects.append(newProject)
    }
}
