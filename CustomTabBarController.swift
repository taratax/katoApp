import UIKit

class CustomTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Example: Customizing the tab bar appearance for all tabs
        setupTabBarItems()
        
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .selected)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for:.normal)
        
        self.navigationController?.navigationBar.barTintColor = themeColor

                
    }

    private func setupTabBarItems() {
        // Ensure we have the correct number of view controllers
        guard let viewControllers = self.viewControllers else { return }
        
        // Iterate over the view controllers and set the tab bar items
        for (index, viewController) in viewControllers.enumerated() {
            switch index {
            case 0:
               
                viewController.tabBarItem.image = UIImage(named: "see")?.withRenderingMode( .alwaysOriginal)
                viewController.tabBarItem.selectedImage = UIImage(named: "see")?.withTintColor(.white, renderingMode: .alwaysOriginal)
              
                viewController.tabBarItem.title = "Visit"
                

            case 1:
                
                viewController.tabBarItem.image = UIImage(named: "hotels")?.withRenderingMode(.alwaysOriginal)
                viewController.tabBarItem.selectedImage = UIImage(named: "hotels")?.withTintColor(.white, renderingMode: .alwaysOriginal)
                viewController.tabBarItem.title = "Hotels"
                
               
                
            case 2:
                viewController.tabBarItem.image = UIImage(named: "restaurants")?.withRenderingMode(.alwaysOriginal)
                viewController.tabBarItem.selectedImage = UIImage(named: "restaurants")?.withTintColor(.white, renderingMode: .alwaysOriginal)
                viewController.tabBarItem.title = "Eating Out"
                
            case 3:
                
                
                viewController.tabBarItem.image = UIImage(named: "bar")?.withRenderingMode(.alwaysOriginal)
                viewController.tabBarItem.selectedImage = UIImage(named: "bar")?.withTintColor(UIColor.white, renderingMode: UIImage.RenderingMode.alwaysOriginal)
                viewController.tabBarItem.title = "Night Life"
                
            case 4:
                viewController.tabBarItem.image = UIImage(named: "transport")?.withRenderingMode(.alwaysOriginal)
                viewController.tabBarItem.selectedImage = UIImage(named: "transport")?.withTintColor(.white, renderingMode: .alwaysOriginal)
                viewController.tabBarItem.title = "Transport"
                
            // Add more cases as necessary for other tabs
                
            default:
                break
            }
        }
    }
}


