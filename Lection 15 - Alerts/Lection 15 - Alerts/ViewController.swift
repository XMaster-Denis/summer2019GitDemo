//
//  ViewController.swift
//  Lection 15 - Alerts
//
//  Created by XMaster on 15.09.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlert(_ sender: UIButton) {
        let alert = UIAlertController(title: "Photo Access", message: "Do you allow to use your photos?", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default){_ in
            print("Permission received")
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel){_ in
            print("Permission  not recieved")
        }
        
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        present(alert, animated: true)
    }
    
    @IBAction func showActionSheet(_ sender: UIButton) {
        let alert = UIAlertController(title: "Photo Access", message: "Do you allow to use your photos?", preferredStyle: .actionSheet)
        let okAction = UIAlertAction(title: "OK", style: .default){_ in
            print("Permission received")
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel){_ in
            print("Permission  not recieved")
        }
        
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        present(alert, animated: true)
    }
    
}

