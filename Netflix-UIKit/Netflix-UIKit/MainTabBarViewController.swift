//
//  ViewController.swift
//  Netflix-UIKit
//
//  Created by Ozgun Dogus on 25.04.2023.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: UpcomingViewController())
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        let vc4 = UINavigationController(rootViewController: DownloadsViewController())
        
        
        
        
    setViewControllers([vc1,vc2,vc3,vc4], animated: true)
        
        
    }


}

