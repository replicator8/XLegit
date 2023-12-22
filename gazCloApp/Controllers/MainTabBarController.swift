//
//  MainTabBarController.swift
//  gazCloApp
//
//  Created by Michael Kivo on 06.12.2023.
//

import UIKit

final class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        generateTabBar()
        setTabBarAppearance()
    }
    
    private func generateTabBar() {
        viewControllers = [
            generateVC(vc: HomeViewController(), title: "Home", image: UIImage(systemName: "house.fill")),
            generateVC(vc: WardrobeViewController(), title: "Wardrobe", image: UIImage(systemName: "tshirt.fill")),
            generateVC(vc: NFCViewController(), title: "Scan", image: UIImage(systemName: "sheqelsign.square.fill")),
            generateVC(vc: AccountViewController(), title: "Account", image: UIImage(systemName: "person.fill")),
            generateVC(vc: SettingsViewController(), title: "Settings", image: UIImage(systemName: "gear"))
        ]
    }
    
    private func generateVC(vc: UIViewController, title: String, image: UIImage?) -> UIViewController {
        vc.tabBarItem.title = title
        vc.tabBarItem.image = image
        return vc
    }
    
    private func setTabBarAppearance() {
        let positionOnX: CGFloat = 10
        let positionOnY: CGFloat = 14
        let width = tabBar.bounds.width - positionOnX * 2
        let height = tabBar.bounds.height + positionOnY * 2
        
        let roundLayer = CAShapeLayer()
        
        let bezierPath = UIBezierPath(
            roundedRect: CGRect(
                x: positionOnX,
                y: tabBar.bounds.minY - positionOnY,
                width: width,
                height: height
            ),
            cornerRadius: height / 2
        )
        
        roundLayer.path = bezierPath.cgPath
        
        tabBar.layer.insertSublayer(roundLayer, at: 0)
        tabBar.itemWidth = width / 5
        tabBar.itemPositioning = .centered
        
        roundLayer.fillColor = UIColor.mainWhite.cgColor
        
        tabBar.tintColor = .tabBarItemAccent
        tabBar.unselectedItemTintColor = .tabBarItemLight
    }
    
}
