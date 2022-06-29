//
//  SessionViewController.swift
//  WorkoutApp
//
//  Created by Ирина on 27.06.2022.
//

import UIKit

class SessionViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.tabBarItem.title = "Session"
        addNavButton(at: .left, with: "Pause")
        addNavButton(at: .right, with: "Finish")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationItem.title = "High Intensity Cardio"
        
    }
  

}
