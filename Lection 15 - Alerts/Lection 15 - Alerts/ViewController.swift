//
//  ViewController.swift
//  Lection 15 - Alerts
//
//  Created by XMaster on 15.09.2023.
//

import UIKit

class ViewController: UIViewController {

    enum Films: String {
        case film1 = "Aladin"
        case film2 = "SpiderMan"
        case film3 = "Iron Man"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let handler = {(alertAction: UIAlertAction) -> Void in
        print("I am Closure \(alertAction.description)")
    }
    
    let handlerAction: (UIAlertAction) -> Void = { action in
        print("It is this action - \(action.title ?? "")")
    }
    
    let handlerFilm: (_ type: Films) -> (UIAlertAction) -> Void = {
        type in
        return { action in
            print(type.rawValue)
        }
    }
    

    @IBAction func showAlert(_ sender: UIButton) {
        let alert = UIAlertController(title: "Photo Access", message: "Do you allow to use your photos?", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default){_ in
            print("Permission received")
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: handler)
        
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        present(alert, animated: true)
    }
    
    
    
    @IBAction func showActionSheet(_ sender: UIButton) {
        let alert = UIAlertController(title: "Photo Access", message: "Do you allow to use your photos?", preferredStyle: .actionSheet)
        let okAction = UIAlertAction(title: "OK", style: .default){_ in
            print("Permission received")
        }
        let filmAction0 = UIAlertAction(title: "Film", style: .default, handler: handlerAction)
        
        let filmAction1 = UIAlertAction(title: Films.film1.rawValue, style: .default, handler: handlerFilm(.film1))
        
        let filmAction2 = UIAlertAction(title: Films.film2.rawValue, style: .default, handler: handlerFilm(.film2))
          
        let filmAction3 = UIAlertAction(title: Films.film3.rawValue, style: .default, handler: handlerFilm(.film3))
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel){_ in
            print("Permission  not recieved")
        }
        
        alert.addAction(okAction)
        alert.addAction(filmAction0)
        alert.addAction(filmAction1)
        alert.addAction(filmAction2)
        alert.addAction(filmAction3)
        alert.addAction(cancelAction)
        present(alert, animated: true)
    }
    
}

