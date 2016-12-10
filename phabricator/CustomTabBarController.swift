//
//  CustomTabBarController.swift
//  phabricator
//
//  Created by Raphael K. on 22.11.16.
//  Copyright © 2016 Raphael K. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let homeController = HomeViewController()
        let homeNavController = UINavigationController(rootViewController: homeController)
        homeNavController.title = "Home"
        homeNavController.tabBarItem.image = UIImage(named: "tab_bar_home")
        
        
        let maniphestController = ManiphestViewController()
        let maniphestNavController = UINavigationController(rootViewController: maniphestController)
        maniphestNavController.title = "Maniphest"
        maniphestNavController.tabBarItem.image = UIImage(named: "tab_bar_maniphest")
        
        let conpherenceViewController = ConpherenceViewController()
        let conpherenceNavViewController = UINavigationController(rootViewController: conpherenceViewController)
        conpherenceNavViewController.title = "Conpherence"
        conpherenceNavViewController.tabBarItem.image = UIImage(named: "tab_bar_conpherence")
        
        let phrictionController = PhrictionViewController()
        let phrictionNavController = UINavigationController(rootViewController: phrictionController)
        phrictionNavController.title = "Phriction"
        phrictionNavController.tabBarItem.image = UIImage(named: "tab_bar_phriction")
        
        let phameController = PhameViewController()
        let phameNavController = UINavigationController(rootViewController: phameController)
        phameNavController.title = "Phame"
        phameNavController.tabBarItem.image = UIImage(named: "tab_bar_phame")
        
        viewControllers = [homeNavController, maniphestNavController, conpherenceNavViewController, phrictionNavController, phameNavController]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
