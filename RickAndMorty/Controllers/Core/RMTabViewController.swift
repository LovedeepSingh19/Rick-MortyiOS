//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Lovedeep on 10/12/23.
//

import UIKit

final class RMTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTab()
        // Do any additional setup after loading the view.
    }
    
    private func setUpTab(){
        let charactersVC = RMCharacterViewController()
        let locationsVC = RMLocationViewController()
        let episodesVC = RMEpisodeViewController()
        let settingsVC = RMSettingsViewController()
        
        
        charactersVC.navigationItem.largeTitleDisplayMode = .automatic
        locationsVC.navigationItem.largeTitleDisplayMode = .automatic
        episodesVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        let Nav1 = UINavigationController(rootViewController: charactersVC)
        let Nav2 = UINavigationController(rootViewController: locationsVC)
        let Nav3 = UINavigationController(rootViewController: episodesVC)
        let Nav4 = UINavigationController(rootViewController: settingsVC)
        
        Nav1.tabBarItem = UITabBarItem(title: "Characters", image: UIImage(systemName: "person"), tag: 1)
        Nav2.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "globe"), tag: 2)
        Nav3.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "tv"), tag: 3)
        Nav4.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 4)
        
        for nav in [Nav1, Nav2, Nav3, Nav4]{
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers([Nav1, Nav2, Nav3, Nav4], animated: true)
    }


}

