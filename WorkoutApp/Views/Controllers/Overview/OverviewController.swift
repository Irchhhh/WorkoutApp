//
//  OverviewController.swift
//  WorkoutApp
//
//  Created by Ирина on 27.06.2022.
//

import UIKit

class OverviewController: BaseViewController {
    
    private let allWorkoutsButton = SecondaryButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Overview"
    }
}
//MARK: - Extension OverviewController, Setup Elements
extension OverviewController {
    
    override func addViews() {
        super.addViews()
        
        view.addSubview(allWorkoutsButton)
    }
    
    //MARK: - AutoLayouts
    override func layout() {
        super.layout()
        
        NSLayoutConstraint.activate([
            allWorkoutsButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            allWorkoutsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            allWorkoutsButton.heightAnchor.constraint(equalToConstant: 28),
            allWorkoutsButton.widthAnchor.constraint(equalToConstant: 130)
        ])
    }
    
    //MARK: - Configure
    override func configure() {
        super.configure()
        
        allWorkoutsButton.translatesAutoresizingMaskIntoConstraints = false
        allWorkoutsButton.setTitle("All Workouts")
    }
}
