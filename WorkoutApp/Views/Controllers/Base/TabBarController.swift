//
//  TabBarController.swift
//  WorkoutApp
//
//  Created by Ирина on 24.06.2022.
//

import UIKit

enum Tabs: Int {
    case overview
    case session
    case progress
    case settings
}

final class TabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        tintColors()
        navigationControllers()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func tintColors() {
        tabBar.tintColor = BaseViewController.greenColor
        tabBar.barTintColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
        tabBar.backgroundColor = .black
        
        tabBar.layer.borderColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
    }
    
    let overviewViewController = OverviewController()
    let sessionViewController = SessionViewController()
    let progressViewController = ProgressViewController()
    let settingsViewController = SettingsViewController()

    func navigationControllers() {
       let overviewNavigationController = NavigationBarController(rootViewController: overviewViewController)
       let sessionNavigationController = NavigationBarController(rootViewController: sessionViewController)
        let settingsNavigationController = NavigationBarController(rootViewController: settingsViewController)
        let progressNavigationController = NavigationBarController(rootViewController: progressViewController)
        
        settingsNavigationController.tabBarItem = UITabBarItem(
            title: "Settings",
            image: #imageLiteral(resourceName: "Gear Icon"),
            tag: Tabs.settings.rawValue
        )
        
        overviewNavigationController.tabBarItem = UITabBarItem(
            title: "Overview",
            image: #imageLiteral(resourceName: "House Icon"),
            tag: Tabs.overview.rawValue
        )
        
        sessionNavigationController.tabBarItem = UITabBarItem(
            title: "Session",
            image: #imageLiteral(resourceName: "Clock Icon"),
            tag: Tabs.session.rawValue
        )
        
        progressNavigationController.tabBarItem = UITabBarItem(
            title: "Progress",
            image: #imageLiteral(resourceName: "Analytics Bars"),
            tag: Tabs.progress.rawValue
        )
        
        setViewControllers([
            settingsNavigationController,
            progressNavigationController,
            overviewNavigationController,
            sessionNavigationController
        ],
                           animated: false)
    }
}
