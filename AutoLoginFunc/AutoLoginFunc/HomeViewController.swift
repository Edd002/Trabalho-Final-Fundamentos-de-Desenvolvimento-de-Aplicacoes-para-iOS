//
//  HomeViewController.swift
//  AutoLoginFunc
//
//  Created by user201951 on 10/10/21.
//

import UIKit

class HomeViewController: UIViewController {

    private var window: UIWindow!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        AppDelegate.AppUtility.lockOrientation(UIInterfaceOrientationMask.portrait, andRotateTo: UIInterfaceOrientation.portrait)

        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(), style: .plain, target: nil, action: nil)
    }

    @IBAction func onClickLogout(_ sender: Any) {
        UserDefaults.standard.removeObject(forKey: "email")

        let loginViewController = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.view.window?.rootViewController = UINavigationController(rootViewController: loginViewController)
        self.view.window?.makeKeyAndVisible()
    }
}
