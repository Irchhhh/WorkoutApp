//
//  BaseViewController.swift
//  WorkoutApp
//
//  Created by Ирина on 27.06.2022.
//

import UIKit

enum NavBarPosition {
    case left
    case right
}

class BaseViewController: UIViewController {
    static let greenColor = #colorLiteral(red: 0, green: 0.9490593804, blue: 0.5288625302, alpha: 1)
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

@objc extension BaseViewController {
    func addViews(){}
    func layout(){}
    func configure() {
        view.backgroundColor = .white
    }
    
    @objc func navBarLeftButton() {
        
    }
    
    @objc func navBarRightButton() {
        
    }
}

//MARK: - Buttons Extension
extension BaseViewController {
    func addNavButton(at position: NavBarPosition, with title: String) {
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.setTitleColor(BaseViewController.greenColor, for: .normal)
        button.titleLabel?.font = UIFont(name: "Helvetica", size: 17)
        
        switch position {
        case .left:
            button.addTarget(self, action: #selector(navBarLeftButton), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self, action: #selector(navBarRightButton), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }
    }
}
