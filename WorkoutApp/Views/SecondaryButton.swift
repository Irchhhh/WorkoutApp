//
//  SecondaryButton.swift
//  WorkoutApp
//
//  Created by Ирина on 29.06.2022.
//

import UIKit

final class SecondaryButton: UIButton {
    
    private let label = UILabel()
    private let iconView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
         addViews()
         layoutViews()
         configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
     func setTitle(_ title: String) {
        label.text = title
    }
}

//MARK: - Setup UI Extension

private extension SecondaryButton {
    
    func addViews() {
        addSubview(label)
        addSubview(iconView)
    }
    
    func layoutViews() {
        NSLayoutConstraint.activate([
            iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            iconView.heightAnchor.constraint(equalToConstant: 9),
            iconView.widthAnchor.constraint(equalToConstant: 15),
            
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.trailingAnchor.constraint(equalTo: iconView.leadingAnchor),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10)
        ])
    }
    
    func configure() {
        backgroundColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
        layer.cornerRadius = 14
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = BaseViewController.greenColor
        label.font = UIFont(name: BaseViewController.font, size: 15)
        label.textAlignment = .center
        
        iconView.translatesAutoresizingMaskIntoConstraints = false
        iconView.image = #imageLiteral(resourceName: "Path")
    }
}
