//
//  ViewController.swift
//  AutoLoginFunc
//
//  Created by user201951 on 10/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtSenha: UITextField!
    @IBOutlet weak var btnLogin: UIStackView!

    let email = "email@email.com"
    let senha = "123456"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        AppDelegate.AppUtility.lockOrientation(UIInterfaceOrientationMask.portrait, andRotateTo: UIInterfaceOrientation.portrait)

        navigationController?.isNavigationBarHidden = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
    }

    @IBAction func onClickLogin(_ sender: Any) {
        if email == txtEmail.text! && senha == txtSenha.text! {
            UserDefaults.standard.set(txtEmail.text!, forKey: "email")
            let viewController = storyboard?.instantiateViewController(withIdentifier: "HomeViewController")
            navigationController?.pushViewController(viewController!, animated: true)
        } else {
            let alert = UIAlertController(title: "alert", message: "Email ou senha incorretos", preferredStyle: .alert)
            let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
        }
    }
}
