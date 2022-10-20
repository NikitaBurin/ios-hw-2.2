//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Никита Бурин on 11.10.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let header = ProfileHeaderView()
    let changeProfileNameButton = UIButton()
    
    func setupLayout(){
        view.addSubview(header)
        view.addSubview(changeProfileNameButton)
        
        let safeLayout = view.safeAreaLayoutGuide

        header.translatesAutoresizingMaskIntoConstraints = false
    
        changeProfileNameButton.translatesAutoresizingMaskIntoConstraints = false
        changeProfileNameButton.backgroundColor = .white
        changeProfileNameButton.setTitle("Change profile name", for: .normal)
        changeProfileNameButton.setTitleColor(.black, for: .normal)
        changeProfileNameButton.layer.borderWidth = 1
        changeProfileNameButton.layer.borderColor = .init(red: 0, green: 0, blue: 0, alpha: 1)
        
        NSLayoutConstraint.activate([
            header.topAnchor.constraint(equalTo: safeLayout.topAnchor, constant: 0),
            header.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            header.heightAnchor.constraint(equalToConstant: 220),
            header.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0),
            
            changeProfileNameButton.bottomAnchor.constraint(equalTo: safeLayout.bottomAnchor),
            changeProfileNameButton.rightAnchor.constraint(equalTo: view.rightAnchor),
            changeProfileNameButton.leftAnchor.constraint(equalTo: view.leftAnchor),
            changeProfileNameButton.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
    
    override func viewWillLayoutSubviews() {
        view.addSubview(header)
        header.frame = view.frame
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        title = "Profile"
        tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person.circle"), tag: 1)
        setupLayout()
    }
}
