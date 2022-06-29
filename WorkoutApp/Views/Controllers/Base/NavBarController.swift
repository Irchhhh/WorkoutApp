//
//  NavBarController.swift
//  WorkoutApp
//
//  Created by Ирина on 27.06.2022.
//

import UIKit

final class NavigationBarController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure() {
        view.backgroundColor = .black
        navigationBar.isTranslucent = false //Окрашивает всё пространство
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1),
            .font: UIFont(name: "Helvetica", size: 17) ?? UIFont()
        ]
        navigationBar.addBottomBorder(with: .gray, height: 1)
    }
}
